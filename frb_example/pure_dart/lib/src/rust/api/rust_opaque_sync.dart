// ignore_for_file: invalid_use_of_internal_member, unused_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'pseudo_manual/rust_opaque_twin_sync.dart';

HideData? syncOptionRustOpaqueTwinNormal({dynamic hint}) =>
    RustLib.instance.api.syncOptionRustOpaqueTwinNormal(hint: hint);

HideData syncCreateOpaqueTwinNormal({dynamic hint}) =>
    RustLib.instance.api.syncCreateOpaqueTwinNormal(hint: hint);

NonSendHideData syncCreateSyncOpaqueTwinNormal({dynamic hint}) =>
    RustLib.instance.api.syncCreateSyncOpaqueTwinNormal(hint: hint);

NonCloneData syncCreateNonCloneTwinNormal({dynamic hint}) =>
    RustLib.instance.api.syncCreateNonCloneTwinNormal(hint: hint);

String syncRunOpaqueTwinNormal(
        {required NonSendHideData opaque, dynamic hint}) =>
    RustLib.instance.api.syncRunOpaqueTwinNormal(opaque: opaque, hint: hint);

/// Structure for testing the sync-mode RustOpaque code generator.
/// FrbOpaqueSyncReturn must be only return type.
/// FrbOpaqueSyncReturn must be without wrapper like Option<> Vec<> etc.
FrbOpaqueSyncReturn frbSyncGeneratorTestTwinNormal({dynamic hint}) =>
    RustLib.instance.api.frbSyncGeneratorTestTwinNormal(hint: hint);

@sealed
class FrbOpaqueSyncReturn extends FrbOpaque {
  FrbOpaqueSyncReturn.fromRaw(int ptr, int size) : super.unsafe(ptr, size);

  @override
  OpaqueDropFnType get dropFn =>
      RustLib.instance.api.dropOpaqueFrbOpaqueSyncReturn;

  @override
  OpaqueShareFnType get shareFn =>
      RustLib.instance.api.shareOpaqueFrbOpaqueSyncReturn;

  @override
  OpaqueTypeFinalizer get staticFinalizer =>
      RustLib.instance.api.frbOpaqueSyncReturnFinalizer;
}
