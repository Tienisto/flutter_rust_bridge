// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.33.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/minimal.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:ffi' as ffi;
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_io.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @protected
  MyStruct dco_decode_box_autoadd_my_struct(dynamic raw);

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  MyStruct dco_decode_my_struct(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  MyStruct sse_decode_box_autoadd_my_struct(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  MyStruct sse_decode_my_struct(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  ffi.Pointer<wire_cst_my_struct> cst_encode_box_autoadd_my_struct(
      MyStruct raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    final ptr = wire.cst_new_box_autoadd_my_struct();
    cst_api_fill_to_wire_my_struct(raw, ptr.ref);
    return ptr;
  }

  @protected
  void cst_api_fill_to_wire_box_autoadd_my_struct(
      MyStruct apiObj, ffi.Pointer<wire_cst_my_struct> wireObj) {
    cst_api_fill_to_wire_my_struct(apiObj, wireObj.ref);
  }

  @protected
  void cst_api_fill_to_wire_my_struct(
      MyStruct apiObj, wire_cst_my_struct wireObj) {
    wireObj.template_ = cst_encode_i_32(apiObj.template);
  }

  @protected
  int cst_encode_i_32(int raw);

  @protected
  void cst_encode_unit(void raw);

  @protected
  void sse_encode_box_autoadd_my_struct(
      MyStruct self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_my_struct(MyStruct self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);
}

// Section: wire_class

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names
// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class RustLibWire implements BaseWire {
  factory RustLibWire.fromExternalLibrary(ExternalLibrary lib) =>
      RustLibWire(lib.ffiDynamicLibrary);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  RustLibWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  RustLibWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  void wire_f(
    int port_,
    ffi.Pointer<wire_cst_my_struct> a,
  ) {
    return _wire_f(
      port_,
      a,
    );
  }

  late final _wire_fPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_cst_my_struct>)>>(
      'frbgen_frb_example_dart_minimal_wire_f');
  late final _wire_f = _wire_fPtr
      .asFunction<void Function(int, ffi.Pointer<wire_cst_my_struct>)>();

  void wire_init_app(
    int port_,
  ) {
    return _wire_init_app(
      port_,
    );
  }

  late final _wire_init_appPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'frbgen_frb_example_dart_minimal_wire_init_app');
  late final _wire_init_app =
      _wire_init_appPtr.asFunction<void Function(int)>();

  void wire_minimal_adder(
    int port_,
    int a,
    int b,
  ) {
    return _wire_minimal_adder(
      port_,
      a,
      b,
    );
  }

  late final _wire_minimal_adderPtr = _lookup<
          ffi
          .NativeFunction<ffi.Void Function(ffi.Int64, ffi.Int32, ffi.Int32)>>(
      'frbgen_frb_example_dart_minimal_wire_minimal_adder');
  late final _wire_minimal_adder =
      _wire_minimal_adderPtr.asFunction<void Function(int, int, int)>();

  ffi.Pointer<wire_cst_my_struct> cst_new_box_autoadd_my_struct() {
    return _cst_new_box_autoadd_my_struct();
  }

  late final _cst_new_box_autoadd_my_structPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_cst_my_struct> Function()>>(
          'frbgen_frb_example_dart_minimal_cst_new_box_autoadd_my_struct');
  late final _cst_new_box_autoadd_my_struct = _cst_new_box_autoadd_my_structPtr
      .asFunction<ffi.Pointer<wire_cst_my_struct> Function()>();

  int dummy_method_to_enforce_bundling() {
    return _dummy_method_to_enforce_bundling();
  }

  late final _dummy_method_to_enforce_bundlingPtr =
      _lookup<ffi.NativeFunction<ffi.Int64 Function()>>(
          'dummy_method_to_enforce_bundling');
  late final _dummy_method_to_enforce_bundling =
      _dummy_method_to_enforce_bundlingPtr.asFunction<int Function()>();
}

typedef DartPostCObjectFnType
    = ffi.Pointer<ffi.NativeFunction<DartPostCObjectFnTypeFunction>>;
typedef DartPostCObjectFnTypeFunction = ffi.Bool Function(
    DartPort port_id, ffi.Pointer<ffi.Void> message);
typedef DartDartPostCObjectFnTypeFunction = bool Function(
    DartDartPort port_id, ffi.Pointer<ffi.Void> message);
typedef DartPort = ffi.Int64;
typedef DartDartPort = int;

final class wire_cst_my_struct extends ffi.Struct {
  @ffi.Int32()
  external int template_;
}
