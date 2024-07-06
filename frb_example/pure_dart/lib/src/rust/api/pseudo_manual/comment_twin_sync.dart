// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.1.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These types are ignored because they are not used by any `pub` functions: `ComplexEnumWithCommentsTwinSync`, `SimpleEnumWithCommentsTwinSync`

/// This is single line comment
void functionWithCommentsTripleSlashSingleLineTwinSync() => RustLib.instance.api
    .crateApiPseudoManualCommentTwinSyncFunctionWithCommentsTripleSlashSingleLineTwinSync();

/// This is first line
/// This is second line
void functionWithCommentsTripleSlashMultiLineTwinSync() => RustLib.instance.api
    .crateApiPseudoManualCommentTwinSyncFunctionWithCommentsTripleSlashMultiLineTwinSync();

/// Multiline comments are fine,
/// but they are not preferred in Rust nor in Dart.
/// Newlines are preserved.
void functionWithCommentsSlashStarStarTwinSync() => RustLib.instance.api
    .crateApiPseudoManualCommentTwinSyncFunctionWithCommentsSlashStarStarTwinSync();

/// Comments on structs
class StructWithCommentsTwinSync {
  /// Documentation on a struct field
  final int fieldWithComments;

  const StructWithCommentsTwinSync({
    required this.fieldWithComments,
  });

  /// Documentation on an instance method
  void instanceMethodTwinSync() => RustLib.instance.api
          .crateApiPseudoManualCommentTwinSyncStructWithCommentsTwinSyncInstanceMethodTwinSync(
        that: this,
      );

  /// Documentation on a static method
  static void staticMethodTwinSync() => RustLib.instance.api
      .crateApiPseudoManualCommentTwinSyncStructWithCommentsTwinSyncStaticMethodTwinSync();

  @override
  int get hashCode => fieldWithComments.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructWithCommentsTwinSync &&
          runtimeType == other.runtimeType &&
          fieldWithComments == other.fieldWithComments;
}
