// ignore_for_file: invalid_use_of_internal_member, unused_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

(String, int) testTupleTwinSync({(String, int)? value, dynamic hint}) =>
    RustLib.instance.api.testTupleTwinSync(value: value, hint: hint);

void testTuple2TwinSync({required List<(String, int)> value, dynamic hint}) =>
    RustLib.instance.api.testTuple2TwinSync(value: value, hint: hint);
