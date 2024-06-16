// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.39.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

import '../frb_generated.dart';

// These functions are ignored because they are not marked as `pub`: `log`
// These functions have error during generation (see debug logs or enable `stop_on_error: true` for more details): `compute_nested_type_with_lifetime_twin_normal`

Future<int> minimalAdder({required int a, required int b}) =>
    RustLib.instance.api.crateApiMinimalMinimalAdder(a: a, b: b);

/// Functions (other tests are mainly methods)
Future<LtTypeWithLifetimeTwinNormal> ltComputeWithLifetimeFunctionTwinNormal(
        {required LtOwnedStructTwinNormal arg}) =>
    RustLib.instance.api
        .crateApiMinimalLtComputeWithLifetimeFunctionTwinNormal(arg: arg);

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner< Lifetimeable < LtNestedTypeWithLifetimeTwinNormal < 'static > >>>
abstract class LtNestedTypeWithLifetimeTwinNormal
    implements RustOpaqueInterface {
  Future<String> greetBorrowMutSelfTwinNormal();

  Future<String> greetBorrowSelfTwinNormal();
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner< Lifetimeable < LtTypeWithLifetimeTwinNormal < 'static > >>>
abstract class LtTypeWithLifetimeTwinNormal implements RustOpaqueInterface {
  /// Input argument has type `T<'a>` (other tests mainly are `&'a T`)
  static Future<
      LtTypeWithLifetimeTwinNormal> computeArgGenericLifetimeTwinNormal(
          {required LtTypeWithLifetimeTwinNormal arg}) =>
      RustLib.instance.api
          .crateApiMinimalLifetimeableAutoOwnedRustOpaqueFlutterRustBridgeforGeneratedRustAutoOpaqueInnerLtTypeWithLifetimeTwinNormalstaticComputeArgGenericLifetimeTwinNormal(
              arg: arg);

  /// `&mut T` where T is lifetimeable
  Future<String> greetBorrowMutSelfTwinNormal();

  /// `&T` where T is lifetimeable
  Future<String> greetBorrowSelfTwinNormal();
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner< Lifetimeable < LtTypeWithMultiDepTwinNormal < 'static > >>>
abstract class LtTypeWithMultiDepTwinNormal implements RustOpaqueInterface {
  /// Multiple input args have lifetime
  static Future<
      LtTypeWithMultiDepTwinNormal> computeWithMultiArgHavingLifetimeTwinNormal(
          {required LtOwnedStructTwinNormal a,
          required LtOwnedStructTwinNormal b,
          required LtSubStructTwinNormal unrelatedBorrowed,
          required LtSubStructTwinNormal unrelatedOwned}) =>
      RustLib.instance.api
          .crateApiMinimalLifetimeableAutoOwnedRustOpaqueFlutterRustBridgeforGeneratedRustAutoOpaqueInnerLtTypeWithMultiDepTwinNormalstaticComputeWithMultiArgHavingLifetimeTwinNormal(
              a: a,
              b: b,
              unrelatedBorrowed: unrelatedBorrowed,
              unrelatedOwned: unrelatedOwned);

  Future<List<String>> greetBorrowMutSelfTwinNormal();

  Future<List<String>> greetBorrowSelfTwinNormal();
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<LtOwnedStructTwinNormal>>
abstract class LtOwnedStructTwinNormal implements RustOpaqueInterface {
  /// `fn f(x: &'a T) -> S<'a>`
  Future<LtTypeWithLifetimeTwinNormal> computeTypeWithLifetimeTwinNormal();

  /// The unrelated arg should not affect results
  Future<LtTypeWithLifetimeTwinNormal>
      computeWithUnrelatedBorrowedArgTwinNormal(
          {required LtSubStructTwinNormal unrelatedBorrowed,
          required LtSubStructTwinNormal unrelatedOwned});

  static Future<LtOwnedStructTwinNormal> create({required String value}) =>
      RustLib.instance.api
          .crateApiMinimalLtOwnedStructTwinNormalCreate(value: value);

  static Future<LtOwnedStructTwinNormal> createWithLogger(
          {required String value, required SimpleLogger logger}) =>
      RustLib.instance.api
          .crateApiMinimalLtOwnedStructTwinNormalCreateWithLogger(
              value: value, logger: logger);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<LtSubStructTwinNormal>>
abstract class LtSubStructTwinNormal implements RustOpaqueInterface {
  Future<String> greetBorrowMutSelfTwinNormal();

  Future<String> greetBorrowSelfTwinNormal();
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<LtTypeWithMultiDepTwinNormal < 'static >>>
abstract class LtTypeWithMultiDepTwinNormal implements RustOpaqueInterface {
  /// Multiple input args have lifetime
  static Future<
      LtTypeWithMultiDepTwinNormal> computeWithMultiArgHavingLifetimeTwinNormal(
          {required LtOwnedStructTwinNormal a,
          required LtOwnedStructTwinNormal b,
          required LtSubStructTwinNormal unrelatedBorrowed,
          required LtSubStructTwinNormal unrelatedOwned}) =>
      RustLib.instance.api
          .crateApiMinimalLifetimeableAutoOwnedRustOpaqueFlutterRustBridgeforGeneratedRustAutoOpaqueInnerLtTypeWithMultiDepTwinNormalstaticComputeWithMultiArgHavingLifetimeTwinNormal(
              a: a,
              b: b,
              unrelatedBorrowed: unrelatedBorrowed,
              unrelatedOwned: unrelatedOwned);

  Future<List<String>> greetBorrowMutSelfTwinNormal();

  Future<List<String>> greetBorrowSelfTwinNormal();
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<SimpleLogger>>
abstract class SimpleLogger implements RustOpaqueInterface {
  Future<List<String>> getAndReset();

  factory SimpleLogger() =>
      RustLib.instance.api.crateApiMinimalSimpleLoggerNew();
}
