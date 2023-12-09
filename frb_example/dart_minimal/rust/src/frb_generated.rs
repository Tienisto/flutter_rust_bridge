// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 1.82.4.

#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case,
    clippy::too_many_arguments
)]

// Section: imports

use crate::api::minimal::*;
use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::transform_result_dco;
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: boilerplate

flutter_rust_bridge::frb_generated_boilerplate!();

// Section: executor

#[cfg(not(target_family = "wasm"))]
flutter_rust_bridge::for_generated::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER:
    flutter_rust_bridge::DefaultHandler<flutter_rust_bridge::for_generated::SimpleThreadPool>
    = flutter_rust_bridge::DefaultHandler::new_simple(Default::default());
}

#[cfg(target_family = "wasm")]
thread_local! {
    pub static THREAD_POOL: flutter_rust_bridge::for_generated::SimpleThreadPool = Default::default();
}

#[cfg(target_family = "wasm")]
flutter_rust_bridge::for_generated::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER:
    flutter_rust_bridge::DefaultHandler<&'static std::thread::LocalKey<flutter_rust_bridge::for_generated::SimpleThreadPool>>
    = flutter_rust_bridge::DefaultHandler::new_simple(&THREAD_POOL);
}

// Section: wire_funcs

fn wire_hi_async_rust_opaque_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    a: impl CstDecode<
            flutter_rust_bridge::RustOpaque<
                std::sync::RwLock<Box<dyn Fn() + Send + Sync + UnwindSafe + RefUnwindSafe>>,
            >,
        > + core::panic::UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_async::<flutter_rust_bridge::for_generated::DcoCodec, _, _, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "hi_async_rust_opaque",
            port: Some(port_),
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal,
        },
        move || {
            let api_a = a.cst_decode();
            move |context| async move {
                transform_result_dco(
                    (move || async move {
                        let api_a = api_a.rust_auto_opaque_decode_owned()?;
                        Result::<_, anyhow::Error>::Ok(
                            crate::api::minimal::hi_async_rust_opaque(api_a).await,
                        )
                    })()
                    .await,
                )
            }
        },
    )
}
fn wire_hi_rust_opaque_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    a: impl CstDecode<
            flutter_rust_bridge::RustOpaque<
                std::sync::RwLock<Box<dyn Fn() + Send + Sync + UnwindSafe + RefUnwindSafe>>,
            >,
        > + core::panic::UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::DcoCodec, _, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "hi_rust_opaque",
            port: Some(port_),
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal,
        },
        move || {
            let api_a = a.cst_decode();
            move |context| {
                transform_result_dco((move || {
                    let api_a = api_a.rust_auto_opaque_decode_owned()?;
                    Result::<_, anyhow::Error>::Ok(crate::api::minimal::hi_rust_opaque(api_a))
                })())
            }
        },
    )
}
fn wire_minimal_adder_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    a: impl CstDecode<i32> + core::panic::UnwindSafe,
    b: impl CstDecode<i32> + core::panic::UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::DcoCodec, _, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "minimal_adder",
            port: Some(port_),
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal,
        },
        move || {
            let api_a = a.cst_decode();
            let api_b = b.cst_decode();
            move |context| {
                transform_result_dco((move || {
                    Result::<_, ()>::Ok(crate::api::minimal::minimal_adder(api_a, api_b))
                })())
            }
        },
    )
}

// Section: dart2rust

impl CstDecode<i32> for i32 {
    fn cst_decode(self) -> i32 {
        self
    }
}
impl CstDecode<usize> for usize {
    fn cst_decode(self) -> usize {
        self
    }
}
impl SseDecode
    for flutter_rust_bridge::RustOpaque<
        std::sync::RwLock<Box<dyn Fn() + Send + Sync + UnwindSafe + RefUnwindSafe>>,
    >
{
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut inner = <usize>::sse_decode(deserializer);
        return flutter_rust_bridge::for_generated::sse_decode_rust_opaque(inner);
    }
}

impl SseDecode for i32 {
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_i32::<NativeEndian>().unwrap()
    }
}

impl SseDecode for usize {
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_usize::<NativeEndian>().unwrap()
    }
}

// Section: rust2dart

impl SseEncode
    for flutter_rust_bridge::RustOpaque<
        std::sync::RwLock<Box<dyn Fn() + Send + Sync + UnwindSafe + RefUnwindSafe>>,
    >
{
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        let (ptr, size) = self.sse_encode_raw();
        <usize>::sse_encode(ptr, serializer);
        <i32>::sse_encode(size, serializer);
    }
}

impl SseEncode for i32 {
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_i32::<NativeEndian>(self).unwrap();
    }
}

impl SseEncode for () {
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {}
}

impl SseEncode for usize {
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_usize::<NativeEndian>(self).unwrap();
    }
}

#[cfg(not(target_family = "wasm"))]
#[path = "frb_generated.io.rs"]
mod io;
#[cfg(not(target_family = "wasm"))]
pub use io::*;

/// cbindgen:ignore
#[cfg(target_family = "wasm")]
#[path = "frb_generated.web.rs"]
mod web;
#[cfg(target_family = "wasm")]
pub use web::*;
