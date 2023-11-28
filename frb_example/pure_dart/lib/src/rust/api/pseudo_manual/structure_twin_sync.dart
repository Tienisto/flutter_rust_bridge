// ignore_for_file: invalid_use_of_internal_member, unused_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

StructWithZeroFieldTwinSync funcStructWithZeroFieldTwinSync(
        {required StructWithZeroFieldTwinSync arg, dynamic hint}) =>
    RustLib.instance.api.funcStructWithZeroFieldTwinSync(arg: arg, hint: hint);

StructWithOneFieldTwinSync funcStructWithOneFieldTwinSync(
        {required StructWithOneFieldTwinSync arg, dynamic hint}) =>
    RustLib.instance.api.funcStructWithOneFieldTwinSync(arg: arg, hint: hint);

StructWithTwoFieldTwinSync funcStructWithTwoFieldTwinSync(
        {required StructWithTwoFieldTwinSync arg, dynamic hint}) =>
    RustLib.instance.api.funcStructWithTwoFieldTwinSync(arg: arg, hint: hint);

TupleStructWithOneFieldTwinSync funcTupleStructWithOneFieldTwinSync(
        {required TupleStructWithOneFieldTwinSync arg, dynamic hint}) =>
    RustLib.instance.api
        .funcTupleStructWithOneFieldTwinSync(arg: arg, hint: hint);

TupleStructWithTwoFieldTwinSync funcTupleStructWithTwoFieldTwinSync(
        {required TupleStructWithTwoFieldTwinSync arg, dynamic hint}) =>
    RustLib.instance.api
        .funcTupleStructWithTwoFieldTwinSync(arg: arg, hint: hint);

class StructWithOneFieldTwinSync {
  final int a;

  const StructWithOneFieldTwinSync({
    required this.a,
  });

  @override
  int get hashCode => a.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructWithOneFieldTwinSync &&
          runtimeType == other.runtimeType &&
          a == other.a;
}

class StructWithTwoFieldTwinSync {
  final int a;
  final int b;

  const StructWithTwoFieldTwinSync({
    required this.a,
    required this.b,
  });

  @override
  int get hashCode => a.hashCode ^ b.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructWithTwoFieldTwinSync &&
          runtimeType == other.runtimeType &&
          a == other.a &&
          b == other.b;
}

class StructWithZeroFieldTwinSync {
  const StructWithZeroFieldTwinSync();

  @override
  int get hashCode => 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructWithZeroFieldTwinSync && runtimeType == other.runtimeType;
}

class TupleStructWithOneFieldTwinSync {
  final int field0;

  const TupleStructWithOneFieldTwinSync({
    required this.field0,
  });

  @override
  int get hashCode => field0.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TupleStructWithOneFieldTwinSync &&
          runtimeType == other.runtimeType &&
          field0 == other.field0;
}

class TupleStructWithTwoFieldTwinSync {
  final int field0;
  final int field1;

  const TupleStructWithTwoFieldTwinSync({
    required this.field0,
    required this.field1,
  });

  @override
  int get hashCode => field0.hashCode ^ field1.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TupleStructWithTwoFieldTwinSync &&
          runtimeType == other.runtimeType &&
          field0 == other.field0 &&
          field1 == other.field1;
}
