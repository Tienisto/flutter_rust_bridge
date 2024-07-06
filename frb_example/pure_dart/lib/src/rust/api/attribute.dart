// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.1.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'package:meta/meta.dart' as meta;
part 'attribute.freezed.dart';

// These types are ignored because they are not used by any `pub` functions: `IgnoredStructTwinNormal`, `StructWithOnlyIgnoredMethodTwinNormal`
// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`
// These functions are ignored (category: IgnoreBecauseExplicitAttribute): `func_should_not_exist_in_dart_twin_normal`, `method_should_not_exist_in_dart_twin_normal`
// These functions are ignored (category: IgnoreBecauseOwnerTyShouldIgnore): `method_should_not_exist_in_dart_twin_normal`

Future<void> handleCustomizedStructTwinNormal(
        {required CustomizedTwinNormal val}) =>
    RustLib.instance.api
        .crateApiAttributeHandleCustomizedStructTwinNormal(val: val);

Future<UserIdTwinNormal> nextUserIdTwinNormal(
        {UserIdTwinNormal userId = const UserIdTwinNormal()}) =>
    RustLib.instance.api.crateApiAttributeNextUserIdTwinNormal(userId: userId);

class CustomizedTwinNormal {
  final String finalField;
  String? nonFinalField;

  CustomizedTwinNormal({
    required this.finalField,
    this.nonFinalField,
  });

  @override
  int get hashCode => finalField.hashCode ^ nonFinalField.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomizedTwinNormal &&
          runtimeType == other.runtimeType &&
          finalField == other.finalField &&
          nonFinalField == other.nonFinalField;
}

/// Example for @freezed and @meta.immutable
@freezed
@meta.immutable
class UserIdTwinNormal with _$UserIdTwinNormal {
  const factory UserIdTwinNormal({
    @Default(0) int value,
  }) = _UserIdTwinNormal;
}
