import 'dart:convert';
import 'dart:io';

import 'package:flutter_rust_bridge/src/cli/cli_utils.dart';
import 'package:flutter_rust_bridge/src/cli/run_command.dart';

/// {@macro flutter_rust_bridge.cli}
class BuildWebArgs {
  /// {@macro flutter_rust_bridge.cli}
  final String wasmOutput;

  /// {@macro flutter_rust_bridge.cli}
  final bool release;

  /// {@macro flutter_rust_bridge.cli}
  final String rustCrateDir;

  /// {@macro flutter_rust_bridge.cli}
  final List<String> wasmPackArgs;

  /// {@macro flutter_rust_bridge.cli}
  final bool enableWasmBindgen;

  /// {@macro flutter_rust_bridge.cli}
  final List<String> wasmBindgenArgs;

  /// {@macro flutter_rust_bridge.cli}
  const BuildWebArgs({
    required this.wasmOutput,
    required this.release,
    required this.rustCrateDir,
    required this.wasmPackArgs,
    required this.enableWasmBindgen,
    required this.wasmBindgenArgs,
  });
}

/// {@macro flutter_rust_bridge.cli}
Future<void> executeBuildWeb(BuildWebArgs args) async {
  await _sanityChecks(args);

  final rustCrateName = await _getRustCreateName(rustCrateDir: args.rustCrateDir);

  await _executeWasmPack(args, rustCrateName: rustCrateName);

  if (args.enableWasmBindgen) {
    await _executeWasmBindgen(args, rustCrateName: rustCrateName);
  }

  // TODO
  // if (config.cliOpts.dartInput != null) {
  //   await _executeDartCompile(config);
  // } else {
  //   await _executeFlutterBuildWeb(config);
  // }
}

Future<void> _sanityChecks(BuildWebArgs args) async {
  final which = Platform.isWindows ? 'where.exe' : 'which';

  await runCommand(which, ['wasm-pack']).catchError((_) {
    bail(
      'wasm-pack is required, but not found in the path.\n'
      'Please install wasm-pack by following the instructions at https://rustwasm.github.io/wasm-pack/\n'
      'or running `cargo install wasm-pack`.',
    );
  });

  if (args.enableWasmBindgen) {
    await runCommand(which, ['wasm-bindgen']).catchError((_) {
      bail(
        'wasm-bindgen flags are enabled, but wasm-bindgen could not be found in the path.\n'
        'Please install wasm-bindgen using `cargo install -f wasm-bindgen-cli`.',
      );
    });
  }

  final crateDir = args.rustCrateDir;
  if (!await File('$crateDir/Cargo.toml').exists()) {
    bail(
      '$crateDir is not a crate directory.\n'
      'Please specify the crate directory using "--crate <CRATE>".',
    );
  }
}

Future<String> _getRustCreateName({required String rustCrateDir}) async {
  final manifest = jsonDecode(await runCommand(
    'cargo',
    ['read-manifest'],
    pwd: rustCrateDir,
    silent: true,
  ));

  final rustCrateName =
      (manifest['targets'] as List).firstWhere((target) => (target['kind'] as List).contains('cdylib'))['name'];
  if (rustCrateName.isEmpty) bail('Crate name cannot be empty.');

  return rustCrateName;
}

Future<void> _executeWasmPack(BuildWebArgs args, {required String rustCrateName}) async {
  await runCommand('wasm-pack', [
    'build', '-t', 'no-modules', '-d', args.wasmOutput, '--no-typescript',
    '--out-name', rustCrateName,
    if (!args.release) '--dev',
    args.rustCrateDir,
    '--', // cargo build args
    '-Z', 'build-std=std,panic_abort',
    ...args.wasmPackArgs,
    // migrate to `wasmPackArgs`
    // if (config.cliOpts.noDefaultFeatures) '--no-default-features',
    // if (config.cliOpts.features != null) '--features=${config.cliOpts.features}'
  ], env: {
    'RUSTUP_TOOLCHAIN': 'nightly',
    'RUSTFLAGS': '-C target-feature=+atomics,+bulk-memory,+mutable-globals',
    if (stdout.supportsAnsiEscapes) 'CARGO_TERM_COLOR': 'always',
  });
}

Future<void> _executeWasmBindgen(BuildWebArgs args, {required String rustCrateName}) async {
  await runCommand('wasm-bindgen', [
    '${args.rustCrateDir}/target/wasm32-unknown-unknown/${args.release ? 'release' : 'debug'}/$rustCrateName.wasm',
    '--out-dir',
    args.wasmOutput,
    '--no-typescript',
    '--target',
    'no-modules',
    ...args.wasmBindgenArgs,
    // migrate to `wasmPackArgs`
    // if (config.cliOpts.weakRefs) '--weak-refs',
    // if (config.cliOpts.referenceTypes) '--reference-types',
  ]);
}

// TODO
// Future<void> _executeDartCompile(Config config) async {
//   final output = p.basename(config.cliOpts.dartInput!);
//   await runCommand('dart', [
//     'compile',
//     'js',
//     '-o',
//     '${config.root}/$output.js',
//     if (config.cliOpts.release) '-O2',
//     if (stdout.supportsAnsiEscapes) '--enable-diagnostic-colors',
//     if (config.cliOpts.verbose) '--verbose',
//     config.cliOpts.dartInput!,
//   ]);
// }
//
// Future<void> _executeFlutterBuildWeb(Config config) async {
//   await runCommand(
//     'flutter',
//     ['build', 'web', if (!config.cliOpts.release) '--profile'] + config.restArgs,
//   );
// }
