// FRB_INTERNAL_GENERATOR: {"forbiddenDuplicatorModes": ["sse", "sync sse", "rustAsync sse"], "skipPde": true}

use flutter_rust_bridge::{DartDynamic, IntoDart};

#[cfg(not(target_family = "wasm"))]
pub fn return_dart_dynamic_twin_normal() -> DartDynamic {
    vec!["foo".into_dart()].into_dart()
}

#[cfg(target_family = "wasm")]
pub fn return_dart_dynamic_twin_normal() {}
