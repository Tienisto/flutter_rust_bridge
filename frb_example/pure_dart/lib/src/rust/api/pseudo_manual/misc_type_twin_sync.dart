// ignore_for_file: invalid_use_of_internal_member, unused_import

import '../../auxiliary/sample_types.dart';
import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

String funcStringTwinSync({required String arg, dynamic hint}) =>
    RustLib.instance.api.funcStringTwinSync(arg: arg, hint: hint);

void funcReturnUnitTwinSync({dynamic hint}) =>
    RustLib.instance.api.funcReturnUnitTwinSync(hint: hint);

List<MySize> handleListOfStructTwinSync(
        {required List<MySize> l, dynamic hint}) =>
    RustLib.instance.api.handleListOfStructTwinSync(l: l, hint: hint);

List<String> handleStringListTwinSync(
        {required List<String> names, dynamic hint}) =>
    RustLib.instance.api.handleStringListTwinSync(names: names, hint: hint);

EmptyTwinSync emptyStructTwinSync(
        {required EmptyTwinSync empty, dynamic hint}) =>
    RustLib.instance.api.emptyStructTwinSync(empty: empty, hint: hint);

class EmptyTwinSync {
  const EmptyTwinSync();

  @override
  int get hashCode => 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmptyTwinSync && runtimeType == other.runtimeType;
}
