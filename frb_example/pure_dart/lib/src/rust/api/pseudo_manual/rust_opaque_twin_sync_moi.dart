// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.1.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:collection/collection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'rust_opaque_twin_moi.dart';
part 'rust_opaque_twin_sync_moi.freezed.dart';

HideDataTwinSyncMoi createOpaqueTwinSyncMoi() => RustLib.instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncMoiCreateOpaqueTwinSyncMoi();

HideDataTwinSyncMoi? createOptionOpaqueTwinSyncMoi(
        {HideDataTwinSyncMoi? opaque}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncMoiCreateOptionOpaqueTwinSyncMoi(
            opaque: opaque);

EnumOpaqueTwinSyncMoiArray5 createArrayOpaqueEnumTwinSyncMoi() => RustLib
    .instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncMoiCreateArrayOpaqueEnumTwinSyncMoi();

String runEnumOpaqueTwinSyncMoi({required EnumOpaqueTwinSyncMoi opaque}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncMoiRunEnumOpaqueTwinSyncMoi(
            opaque: opaque);

String runOpaqueTwinSyncMoi({required HideDataTwinSyncMoi opaque}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncMoiRunOpaqueTwinSyncMoi(
            opaque: opaque);

String runOpaqueWithDelayTwinSyncMoi({required HideDataTwinSyncMoi opaque}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncMoiRunOpaqueWithDelayTwinSyncMoi(
            opaque: opaque);

HideDataTwinSyncMoiArray2 opaqueArrayTwinSyncMoi() => RustLib.instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncMoiOpaqueArrayTwinSyncMoi();

String runNonCloneTwinSyncMoi({required NonCloneDataTwinSyncMoi clone}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncMoiRunNonCloneTwinSyncMoi(
            clone: clone);

void opaqueArrayRunTwinSyncMoi({required HideDataTwinSyncMoiArray2 data}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncMoiOpaqueArrayRunTwinSyncMoi(
            data: data);

List<HideDataTwinSyncMoi> opaqueVecTwinSyncMoi() => RustLib.instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncMoiOpaqueVecTwinSyncMoi();

void opaqueVecRunTwinSyncMoi({required List<HideDataTwinSyncMoi> data}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncMoiOpaqueVecRunTwinSyncMoi(
            data: data);

OpaqueNestedTwinSyncMoi createNestedOpaqueTwinSyncMoi() => RustLib.instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncMoiCreateNestedOpaqueTwinSyncMoi();

void runNestedOpaqueTwinSyncMoi({required OpaqueNestedTwinSyncMoi opaque}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncMoiRunNestedOpaqueTwinSyncMoi(
            opaque: opaque);

String unwrapRustOpaqueTwinSyncMoi({required HideDataTwinSyncMoi opaque}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncMoiUnwrapRustOpaqueTwinSyncMoi(
            opaque: opaque);

/// Function to check the code generator.
/// FrbOpaqueReturn must be only return type.
/// FrbOpaqueReturn must not be used as an argument.
FrbOpaqueReturnTwinSyncMoi frbGeneratorTestTwinSyncMoi() => RustLib.instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncMoiFrbGeneratorTestTwinSyncMoi();

// Rust type: RustOpaqueMoi<Box < dyn DartDebugTwinSyncMoi >>
abstract class BoxDartDebugTwinSyncMoi implements RustOpaqueInterface {}

// Rust type: RustOpaqueMoi<FrbOpaqueReturnTwinSyncMoi>
abstract class FrbOpaqueReturnTwinSyncMoi implements RustOpaqueInterface {}

// Rust type: RustOpaqueMoi<HideDataTwinSyncMoi>
abstract class HideDataTwinSyncMoi implements RustOpaqueInterface {}

class HideDataTwinSyncMoiArray2
    extends NonGrowableListView<HideDataTwinSyncMoi> {
  static const arraySize = 2;

  @internal
  List<HideDataTwinSyncMoi> get inner => _inner;
  final List<HideDataTwinSyncMoi> _inner;

  HideDataTwinSyncMoiArray2(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  HideDataTwinSyncMoiArray2.init(HideDataTwinSyncMoi fill)
      : this(List<HideDataTwinSyncMoi>.filled(arraySize, fill));
}

// Rust type: RustOpaqueMoi<Mutex < HideDataTwinSyncMoi >>
abstract class MutexHideDataTwinSyncMoi implements RustOpaqueInterface {}

// Rust type: RustOpaqueMoi<NonCloneDataTwinSyncMoi>
abstract class NonCloneDataTwinSyncMoi implements RustOpaqueInterface {}

// Rust type: RustOpaqueMoi<RwLock < HideDataTwinSyncMoi >>
abstract class RwLockHideDataTwinSyncMoi implements RustOpaqueInterface {}

@freezed
sealed class EnumOpaqueTwinSyncMoi with _$EnumOpaqueTwinSyncMoi {
  const EnumOpaqueTwinSyncMoi._();

  const factory EnumOpaqueTwinSyncMoi.struct(
    HideDataTwinSyncMoi field0,
  ) = EnumOpaqueTwinSyncMoi_Struct;
  const factory EnumOpaqueTwinSyncMoi.primitive(
    I16 field0,
  ) = EnumOpaqueTwinSyncMoi_Primitive;
  const factory EnumOpaqueTwinSyncMoi.traitObj(
    BoxDartDebugTwinSyncMoi field0,
  ) = EnumOpaqueTwinSyncMoi_TraitObj;
  const factory EnumOpaqueTwinSyncMoi.mutex(
    MutexHideDataTwinSyncMoi field0,
  ) = EnumOpaqueTwinSyncMoi_Mutex;
  const factory EnumOpaqueTwinSyncMoi.rwLock(
    RwLockHideDataTwinSyncMoi field0,
  ) = EnumOpaqueTwinSyncMoi_RwLock;
  const factory EnumOpaqueTwinSyncMoi.nothing() = EnumOpaqueTwinSyncMoi_Nothing;
}

class EnumOpaqueTwinSyncMoiArray5
    extends NonGrowableListView<EnumOpaqueTwinSyncMoi> {
  static const arraySize = 5;

  @internal
  List<EnumOpaqueTwinSyncMoi> get inner => _inner;
  final List<EnumOpaqueTwinSyncMoi> _inner;

  EnumOpaqueTwinSyncMoiArray5(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  EnumOpaqueTwinSyncMoiArray5.init(EnumOpaqueTwinSyncMoi fill)
      : this(List<EnumOpaqueTwinSyncMoi>.filled(arraySize, fill));
}

/// [`HideDataTwinSyncMoi`] has private fields.
class OpaqueNestedTwinSyncMoi {
  final HideDataTwinSyncMoi first;
  final HideDataTwinSyncMoi second;

  const OpaqueNestedTwinSyncMoi({
    required this.first,
    required this.second,
  });

  @override
  int get hashCode => first.hashCode ^ second.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpaqueNestedTwinSyncMoi &&
          runtimeType == other.runtimeType &&
          first == other.first &&
          second == other.second;
}
