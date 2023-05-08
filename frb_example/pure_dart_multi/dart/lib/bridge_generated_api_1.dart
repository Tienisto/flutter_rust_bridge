// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.75.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated_api_1.io.dart' if (dart.library.html) 'bridge_generated_api_1.web.dart';
import 'bridge_generated_shares.dart';
export 'bridge_generated_shares.dart';
import 'bridge_generated_shares.io.dart' if (dart.library.html) 'bridge_generated_shares.web.dart';

abstract class ApiClass1 {
  Future<double> testInbuiltTypeInBlock1({required int a, required double b, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestInbuiltTypeInBlock1ConstMeta;

  Future<String> testStringInBlock1({required String s, required int i, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestStringInBlock1ConstMeta;

  String testStringInSyncInBlock1({required String s, required int i, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestStringInSyncInBlock1ConstMeta;

  SharedStructOnlyForSyncTest testSharedStructOnlyForSyncWithSyncReturnInBlock1(
      {required String name, required double score, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestSharedStructOnlyForSyncWithSyncReturnInBlock1ConstMeta;

  Future<SharedStructInAllBlocks> testAllSharedStructInBlock1(
      {required SharedStructInAllBlocks custom, required String s, required int i, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestAllSharedStructInBlock1ConstMeta;

  Future<SharedStructInBlock1And2> testSharedStructInBlock1For1And2(
      {required SharedStructInBlock1And2 custom, required String s, required int i, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestSharedStructInBlock1For1And2ConstMeta;

  Future<String> testCrossSharedStructInBlock1For1And2({required CrossSharedStructInBlock1And2 custom, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestCrossSharedStructInBlock1For1And2ConstMeta;

  Future<StructOnlyForBlock1> testUniqueStruct1(
      {required StructOnlyForBlock1 custom, required String s, required int i, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestUniqueStruct1ConstMeta;

  Future<String> testStructDefinedInBlock1({required StructDefinedInBlock1 custom, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestStructDefinedInBlock1ConstMeta;

  Future<String> testMethodMethodStructDefinedInBlock1(
      {required StructDefinedInBlock1 that, required String message, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestMethodMethodStructDefinedInBlock1ConstMeta;

  Future<String> testStaticMethodStaticMethodStructDefinedInBlock1({required String message, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestStaticMethodStaticMethodStructDefinedInBlock1ConstMeta;
}

class StructDefinedInBlock1 {
  final ApiClass1 bridge;
  final String name;

  const StructDefinedInBlock1({
    required this.bridge,
    required this.name,
  });

  Future<String> testMethod({required String message, dynamic hint}) => bridge.testMethodMethodStructDefinedInBlock1(
        that: this,
        message: message,
      );

  static Future<String> testStaticMethod({required ApiClass1 bridge, required String message, dynamic hint}) =>
      bridge.testStaticMethodStaticMethodStructDefinedInBlock1(message: message, hint: hint);
}

/// This is a struct only used in API block 1 for test, but not defined in block file
class StructOnlyForBlock1 {
  final int? id;
  final double? num;
  final String? name;

  const StructOnlyForBlock1({
    this.id,
    this.num,
    this.name,
  });
}

class ApiClass1Impl implements ApiClass1 {
  final ApiClass1Platform _platform;
  final BridgeGeneratedSharesPlatform _sharedPlatform;
  final BridgeGeneratedSharesImpl _sharedImpl;

  factory ApiClass1Impl(ExternalLibrary dylib) {
    final platform = ApiClass1Platform(dylib);
    final sharedPlatform = BridgeGeneratedSharesPlatform(dylib);
    final sharedImpl = BridgeGeneratedSharesImpl(dylib);
    return ApiClass1Impl.raw(platform, sharedPlatform, sharedImpl);
  }

  ApiClass1Impl.raw(this._platform, this._sharedPlatform, this._sharedImpl);

  /// Only valid on web/WASM platforms.
  factory ApiClass1Impl.wasm(FutureOr<WasmModule> module) => ApiClass1Impl(module as ExternalLibrary);

  Future<double> testInbuiltTypeInBlock1({required int a, required double b, dynamic hint}) {
    var arg0 = api2wire_i32(a);
    var arg1 = api2wire_f32(b);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_inbuilt_type_in_block_1(port_, arg0, arg1),
      parseSuccessData: _sharedImpl.wire2api_f32,
      constMeta: kTestInbuiltTypeInBlock1ConstMeta,
      argValues: [a, b],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestInbuiltTypeInBlock1ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "test_inbuilt_type_in_block_1",
        argNames: ["a", "b"],
      );

  Future<String> testStringInBlock1({required String s, required int i, dynamic hint}) {
    var arg0 = _sharedPlatform.api2wire_String(s);
    var arg1 = _sharedPlatform.api2wire_u64(i);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_string_in_block_1(port_, arg0, arg1),
      parseSuccessData: _sharedImpl.wire2api_String,
      constMeta: kTestStringInBlock1ConstMeta,
      argValues: [s, i],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestStringInBlock1ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "test_string_in_block_1",
        argNames: ["s", "i"],
      );

  String testStringInSyncInBlock1({required String s, required int i, dynamic hint}) {
    var arg0 = _sharedPlatform.api2wire_String(s);
    var arg1 = _sharedPlatform.api2wire_u64(i);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_test_string_in_sync_in_block_1(arg0, arg1),
      parseSuccessData: _sharedImpl.wire2api_String,
      constMeta: kTestStringInSyncInBlock1ConstMeta,
      argValues: [s, i],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestStringInSyncInBlock1ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "test_string_in_sync_in_block_1",
        argNames: ["s", "i"],
      );

  SharedStructOnlyForSyncTest testSharedStructOnlyForSyncWithSyncReturnInBlock1(
      {required String name, required double score, dynamic hint}) {
    var arg0 = _sharedPlatform.api2wire_String(name);
    var arg1 = api2wire_f64(score);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_test_shared_struct_only_for_sync_with_sync_return_in_block_1(arg0, arg1),
      parseSuccessData: _sharedImpl.wire2api_shared_struct_only_for_sync_test,
      constMeta: kTestSharedStructOnlyForSyncWithSyncReturnInBlock1ConstMeta,
      argValues: [name, score],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestSharedStructOnlyForSyncWithSyncReturnInBlock1ConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "test_shared_struct_only_for_sync_with_sync_return_in_block_1",
        argNames: ["name", "score"],
      );

  Future<SharedStructInAllBlocks> testAllSharedStructInBlock1(
      {required SharedStructInAllBlocks custom, required String s, required int i, dynamic hint}) {
    var arg0 = _sharedPlatform.api2wire_box_autoadd_shared_struct_in_all_blocks(custom);
    var arg1 = _sharedPlatform.api2wire_String(s);
    var arg2 = api2wire_i32(i);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_all_shared_struct_in_block_1(port_, arg0, arg1, arg2),
      parseSuccessData: _sharedImpl.wire2api_shared_struct_in_all_blocks,
      constMeta: kTestAllSharedStructInBlock1ConstMeta,
      argValues: [custom, s, i],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestAllSharedStructInBlock1ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "test_all_shared_struct_in_block_1",
        argNames: ["custom", "s", "i"],
      );

  Future<SharedStructInBlock1And2> testSharedStructInBlock1For1And2(
      {required SharedStructInBlock1And2 custom, required String s, required int i, dynamic hint}) {
    var arg0 = _sharedPlatform.api2wire_box_autoadd_shared_struct_in_block_1_and_2(custom);
    var arg1 = _sharedPlatform.api2wire_String(s);
    var arg2 = api2wire_i32(i);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_shared_struct_in_block_1_for_1_and_2(port_, arg0, arg1, arg2),
      parseSuccessData: _sharedImpl.wire2api_shared_struct_in_block_1_and_2,
      constMeta: kTestSharedStructInBlock1For1And2ConstMeta,
      argValues: [custom, s, i],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestSharedStructInBlock1For1And2ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "test_shared_struct_in_block_1_for_1_and_2",
        argNames: ["custom", "s", "i"],
      );

  Future<String> testCrossSharedStructInBlock1For1And2({required CrossSharedStructInBlock1And2 custom, dynamic hint}) {
    var arg0 = _sharedPlatform.api2wire_box_autoadd_cross_shared_struct_in_block_1_and_2(custom);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_cross_shared_struct_in_block_1_for_1_and_2(port_, arg0),
      parseSuccessData: _sharedImpl.wire2api_String,
      constMeta: kTestCrossSharedStructInBlock1For1And2ConstMeta,
      argValues: [custom],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestCrossSharedStructInBlock1For1And2ConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "test_cross_shared_struct_in_block_1_for_1_and_2",
        argNames: ["custom"],
      );

  Future<StructOnlyForBlock1> testUniqueStruct1(
      {required StructOnlyForBlock1 custom, required String s, required int i, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_struct_only_for_block_1(custom);
    var arg1 = _sharedPlatform.api2wire_String(s);
    var arg2 = api2wire_i8(i);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_unique_struct_1(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_struct_only_for_block_1,
      constMeta: kTestUniqueStruct1ConstMeta,
      argValues: [custom, s, i],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestUniqueStruct1ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "test_unique_struct_1",
        argNames: ["custom", "s", "i"],
      );

  Future<String> testStructDefinedInBlock1({required StructDefinedInBlock1 custom, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_struct_defined_in_block_1(custom);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_struct_defined_in_block_1(port_, arg0),
      parseSuccessData: _sharedImpl.wire2api_String,
      constMeta: kTestStructDefinedInBlock1ConstMeta,
      argValues: [custom],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestStructDefinedInBlock1ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "test_struct_defined_in_block_1",
        argNames: ["custom"],
      );

  Future<String> testMethodMethodStructDefinedInBlock1(
      {required StructDefinedInBlock1 that, required String message, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_struct_defined_in_block_1(that);
    var arg1 = _sharedPlatform.api2wire_String(message);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_method__method__StructDefinedInBlock1(port_, arg0, arg1),
      parseSuccessData: _sharedImpl.wire2api_String,
      constMeta: kTestMethodMethodStructDefinedInBlock1ConstMeta,
      argValues: [that, message],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestMethodMethodStructDefinedInBlock1ConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "test_method__method__StructDefinedInBlock1",
        argNames: ["that", "message"],
      );

  Future<String> testStaticMethodStaticMethodStructDefinedInBlock1({required String message, dynamic hint}) {
    var arg0 = _sharedPlatform.api2wire_String(message);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_static_method__static_method__StructDefinedInBlock1(port_, arg0),
      parseSuccessData: _sharedImpl.wire2api_String,
      constMeta: kTestStaticMethodStaticMethodStructDefinedInBlock1ConstMeta,
      argValues: [message],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestStaticMethodStaticMethodStructDefinedInBlock1ConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "test_static_method__static_method__StructDefinedInBlock1",
        argNames: ["message"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  int _wire2api_box_autoadd_i8(dynamic raw) {
    return raw as int;
  }

  int _wire2api_i8(dynamic raw) {
    return raw as int;
  }

  String? _wire2api_opt_String(dynamic raw) {
    return raw == null ? null : _sharedImpl.wire2api_String(raw);
  }

  double? _wire2api_opt_box_autoadd_f64(dynamic raw) {
    return raw == null ? null : _sharedImpl.wire2api_box_autoadd_f64(raw);
  }

  int? _wire2api_opt_box_autoadd_i8(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_i8(raw);
  }

  StructOnlyForBlock1 _wire2api_struct_only_for_block_1(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 3) throw Exception('unexpected arr length: expect 3 but see ${arr.length}');
    return StructOnlyForBlock1(
      id: _wire2api_opt_box_autoadd_i8(arr[0]),
      num: _wire2api_opt_box_autoadd_f64(arr[1]),
      name: _wire2api_opt_String(arr[2]),
    );
  }
}

// Section: api2wire

@protected
int api2wire_i8(int raw) {
  return raw;
}

// Section: finalizer
