import 'package:flutter_rust_bridge/src/codec/base.dart';

/// {@macro flutter_rust_bridge.only_for_generated_code}
class DcoCodec extends BaseCodec {
  /// {@macro flutter_rust_bridge.only_for_generated_code}
  @override
  S decode<S, E extends Object>(
      List<dynamic> raw,
      S Function(dynamic) parseSuccessData,
      E Function(dynamic)? parseErrorData) {
    switch (_Rust2DartAction.values[raw[0]]) {
      case _Rust2DartAction.success:
        assert(raw.length == 2);
        return parseSuccessData(raw[1]);

      case _Rust2DartAction.error:
        assert(raw.length == 2);
        if (parseErrorData == null) {
          throw Exception(
              'transformRust2DartMessage received error message, but no parseErrorData to parse it. '
              'Raw data: $raw');
        }
        throw parseErrorData(raw[1]);

      case _Rust2DartAction.panic:
        assert(raw.length == 2);
        throw dcoDecodePanicError(raw[1]);

      case _Rust2DartAction.closeStream:
        assert(raw.length == 1);
        throw _CloseStreamException();

      default:
        throw Exception('Unsupported message (raw=$raw)');
    }
  }
}

/// NOTE: Please keep in sync with the Rust side
enum _Rust2DartAction { success, error, closeStream, panic }
