// ignore_for_file: invalid_use_of_internal_member, unused_import

import '../../frb_generated.dart';
import 'package:collection/collection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

SumWithTwinSync getSumStructTwinSync({dynamic hint}) =>
    RustLib.instance.api.getSumStructTwinSync(hint: hint);

SumWithTwinSyncArray3 getSumArrayTwinSync(
        {required int a, required int b, required int c, dynamic hint}) =>
    RustLib.instance.api.getSumArrayTwinSync(a: a, b: b, c: c, hint: hint);

class ConcatenateWithTwinSync {
  final String a;

  const ConcatenateWithTwinSync({
    required this.a,
  });

  static String concatenateStaticTwinSync(
          {required String a, required String b, dynamic hint}) =>
      RustLib.instance.api.concatenateWithTwinSyncConcatenateStaticTwinSync(
          a: a, b: b, hint: hint);

  String concatenateTwinSync({required String b, dynamic hint}) =>
      RustLib.instance.api.concatenateWithTwinSyncConcatenateTwinSync(
        that: this,
        b: b,
      );

  static Stream<int> handleSomeStaticStreamSinkSingleArgTwinSync(
          {dynamic hint}) =>
      RustLib.instance.api
          .concatenateWithTwinSyncHandleSomeStaticStreamSinkSingleArgTwinSync(
              hint: hint);

  static Stream<Log2TwinSync> handleSomeStaticStreamSinkTwinSync(
          {required int key, required int max, dynamic hint}) =>
      RustLib.instance.api
          .concatenateWithTwinSyncHandleSomeStaticStreamSinkTwinSync(
              key: key, max: max, hint: hint);

  Stream<int> handleSomeStreamSinkAt1TwinSync({dynamic hint}) =>
      RustLib.instance.api
          .concatenateWithTwinSyncHandleSomeStreamSinkAt1TwinSync(
        that: this,
      );

  Stream<Log2TwinSync> handleSomeStreamSinkTwinSync(
          {required int key, required int max, dynamic hint}) =>
      RustLib.instance.api.concatenateWithTwinSyncHandleSomeStreamSinkTwinSync(
        that: this,
        key: key,
        max: max,
      );

  static ConcatenateWithTwinSync newTwinSync(
          {required String a, dynamic hint}) =>
      RustLib.instance.api.concatenateWithTwinSyncNewTwinSync(a: a, hint: hint);

  @override
  int get hashCode => a.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConcatenateWithTwinSync &&
          runtimeType == other.runtimeType &&
          a == other.a;
}

class Log2TwinSync {
  final int key;
  final String value;

  const Log2TwinSync({
    required this.key,
    required this.value,
  });

  @override
  int get hashCode => key.hashCode ^ value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Log2TwinSync &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          value == other.value;
}

class SumWithTwinSync {
  final int x;

  const SumWithTwinSync({
    required this.x,
  });

  int sumTwinSync({required int y, required int z, dynamic hint}) =>
      RustLib.instance.api.sumWithTwinSyncSumTwinSync(
        that: this,
        y: y,
        z: z,
      );

  @override
  int get hashCode => x.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SumWithTwinSync &&
          runtimeType == other.runtimeType &&
          x == other.x;
}

class SumWithTwinSyncArray3 extends NonGrowableListView<SumWithTwinSync> {
  static const arraySize = 3;
  SumWithTwinSyncArray3(List<SumWithTwinSync> inner)
      : assert(inner.length == arraySize),
        super(inner);
  SumWithTwinSyncArray3.unchecked(List<SumWithTwinSync> inner) : super(inner);
  SumWithTwinSyncArray3.init(SumWithTwinSync fill)
      : super(List<SumWithTwinSync>.filled(arraySize, fill));
}
