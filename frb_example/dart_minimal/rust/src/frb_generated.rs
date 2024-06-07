// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

#![allow(
    non_camel_case_types,
    unused,
    non_snake_case,
    clippy::needless_return,
    clippy::redundant_closure_call,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::unused_unit,
    clippy::double_parens,
    clippy::let_and_return,
    clippy::too_many_arguments,
    clippy::match_single_binding,
    clippy::clone_on_copy,
    clippy::let_unit_value
)]

// Section: imports

use crate::api::minimal::SimpleTraitTwinNormal;
use crate::api::minimal::*;
use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::transform_result_dco;
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: boilerplate

flutter_rust_bridge::frb_generated_boilerplate!(
    default_stream_sink_codec = SseCodec,
    default_rust_opaque = RustOpaqueMoi,
    default_rust_auto_opaque = RustAutoOpaqueMoi,
);
pub(crate) const FLUTTER_RUST_BRIDGE_CODEGEN_VERSION: &str = "2.0.0-dev.37";
pub(crate) const FLUTTER_RUST_BRIDGE_CODEGEN_CONTENT_HASH: i32 = -1370915949;

// Section: executor

flutter_rust_bridge::frb_generated_default_handler!();

// Section: wire_funcs

fn wire__crate__api__minimal__StructOneWithTraitTwinNormal_get_one_impl(
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartSse {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync::<flutter_rust_bridge::for_generated::SseCodec, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "StructOneWithTraitTwinNormal_get_one",
            port: None,
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Sync,
        },
        move || {
            let message = unsafe {
                flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(
                    ptr_,
                    rust_vec_len_,
                    data_len_,
                )
            };
            let mut deserializer =
                flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            let api_that = <RustOpaqueMoi<
                flutter_rust_bridge::for_generated::RustAutoOpaqueInner<
                    StructOneWithTraitTwinNormal,
                >,
            >>::sse_decode(&mut deserializer);
            deserializer.end();
            transform_result_sse((move || {
                let mut api_that_decoded = None;
                let decode_indices_ =
                    flutter_rust_bridge::for_generated::rust_auto_opaque_decode_compute_order(
                        vec![
                            flutter_rust_bridge::for_generated::rust_auto_opaque_lock_order_info(
                                &api_that, 0, false,
                            ),
                        ],
                    );
                for i in decode_indices_ {
                    match i {
                        0 => api_that_decoded = Some(
                            flutter_rust_bridge::for_generated::rust_auto_opaque_decode_sync_ref(
                                &api_that,
                            ),
                        ),
                        _ => unreachable!(),
                    }
                }
                let api_that = api_that_decoded.unwrap();
                Result::<_, ()>::Ok(api_that.one.clone())
            })())
        },
    )
}
fn wire__crate__api__minimal__StructOneWithTraitTwinNormal_set_one_impl(
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartSse {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync::<flutter_rust_bridge::for_generated::SseCodec,_>(flutter_rust_bridge::for_generated::TaskInfo{ debug_name: "StructOneWithTraitTwinNormal_set_one", port: None, mode: flutter_rust_bridge::for_generated::FfiCallMode::Sync }, move || { 
            let message = unsafe { flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(ptr_, rust_vec_len_, data_len_) };
            let mut deserializer = flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            let api_that = <RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructOneWithTraitTwinNormal>>>::sse_decode(&mut deserializer);
let api_one = <i32>::sse_decode(&mut deserializer);deserializer.end();
                transform_result_sse((move || {
                    let mut api_that_decoded = None;
let decode_indices_ = flutter_rust_bridge::for_generated::rust_auto_opaque_decode_compute_order(vec![flutter_rust_bridge::for_generated::rust_auto_opaque_lock_order_info(&api_that, 0, true)]);
        for i in decode_indices_ {
            match i {
                0 => api_that_decoded = Some(flutter_rust_bridge::for_generated::rust_auto_opaque_decode_sync_ref_mut(&api_that)),
                _ => unreachable!(),
            }
        }
        let mut api_that = api_that_decoded.unwrap();
 Result::<_,()>::Ok({ { api_that.one = api_one; }; })
                })()) })
}
fn wire__crate__api__minimal__StructOneWithTraitTwinNormal_simple_trait_fn_receiver_borrow_twin_normal_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::SseCodec,_,_>(flutter_rust_bridge::for_generated::TaskInfo{ debug_name: "StructOneWithTraitTwinNormal_simple_trait_fn_receiver_borrow_twin_normal", port: Some(port_), mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal }, move || { 
            let message = unsafe { flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(ptr_, rust_vec_len_, data_len_) };
            let mut deserializer = flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            let api_that = <RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructOneWithTraitTwinNormal>>>::sse_decode(&mut deserializer);deserializer.end(); move |context|  {
                    transform_result_sse((move ||  {
                        let mut api_that_decoded = None;
let decode_indices_ = flutter_rust_bridge::for_generated::rust_auto_opaque_decode_compute_order(vec![flutter_rust_bridge::for_generated::rust_auto_opaque_lock_order_info(&api_that, 0, false)]);
        for i in decode_indices_ {
            match i {
                0 => api_that_decoded = Some(flutter_rust_bridge::for_generated::rust_auto_opaque_decode_sync_ref(&api_that)),
                _ => unreachable!(),
            }
        }
        let api_that = api_that_decoded.unwrap();
 Result::<_,()>::Ok(crate::api::minimal::StructOneWithTraitTwinNormal::simple_trait_fn_receiver_borrow_twin_normal(&api_that))
                    })())
                } })
}
fn wire__crate__api__minimal__StructOneWithTraitTwinNormal_simple_trait_fn_twin_normal_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::SseCodec,_,_>(flutter_rust_bridge::for_generated::TaskInfo{ debug_name: "StructOneWithTraitTwinNormal_simple_trait_fn_twin_normal", port: Some(port_), mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal }, move || { 
            let message = unsafe { flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(ptr_, rust_vec_len_, data_len_) };
            let mut deserializer = flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            let api_value = <i32>::sse_decode(&mut deserializer);deserializer.end(); move |context|  {
                    transform_result_sse((move ||  {
                         Result::<_,()>::Ok(crate::api::minimal::StructOneWithTraitTwinNormal::simple_trait_fn_twin_normal(api_value))
                    })())
                } })
}
fn wire__crate__api__minimal__StructOneWithTraitTwinNormal_simple_trait_fn_with_default_impl_twin_normal_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::SseCodec,_,_>(flutter_rust_bridge::for_generated::TaskInfo{ debug_name: "StructOneWithTraitTwinNormal_simple_trait_fn_with_default_impl_twin_normal", port: Some(port_), mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal }, move || { 
            let message = unsafe { flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(ptr_, rust_vec_len_, data_len_) };
            let mut deserializer = flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            deserializer.end(); move |context|  {
                    transform_result_sse((move ||  {
                         Result::<_,()>::Ok(crate::api::minimal::StructOneWithTraitTwinNormal::simple_trait_fn_with_default_impl_twin_normal())
                    })())
                } })
}
fn wire__crate__api__minimal__StructTwoWithTraitTwinNormal_get_two_impl(
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartSse {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync::<flutter_rust_bridge::for_generated::SseCodec, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "StructTwoWithTraitTwinNormal_get_two",
            port: None,
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Sync,
        },
        move || {
            let message = unsafe {
                flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(
                    ptr_,
                    rust_vec_len_,
                    data_len_,
                )
            };
            let mut deserializer =
                flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            let api_that = <RustOpaqueMoi<
                flutter_rust_bridge::for_generated::RustAutoOpaqueInner<
                    StructTwoWithTraitTwinNormal,
                >,
            >>::sse_decode(&mut deserializer);
            deserializer.end();
            transform_result_sse((move || {
                let mut api_that_decoded = None;
                let decode_indices_ =
                    flutter_rust_bridge::for_generated::rust_auto_opaque_decode_compute_order(
                        vec![
                            flutter_rust_bridge::for_generated::rust_auto_opaque_lock_order_info(
                                &api_that, 0, false,
                            ),
                        ],
                    );
                for i in decode_indices_ {
                    match i {
                        0 => api_that_decoded = Some(
                            flutter_rust_bridge::for_generated::rust_auto_opaque_decode_sync_ref(
                                &api_that,
                            ),
                        ),
                        _ => unreachable!(),
                    }
                }
                let api_that = api_that_decoded.unwrap();
                Result::<_, ()>::Ok(api_that.two.clone())
            })())
        },
    )
}
fn wire__crate__api__minimal__StructTwoWithTraitTwinNormal_set_two_impl(
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartSse {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync::<flutter_rust_bridge::for_generated::SseCodec,_>(flutter_rust_bridge::for_generated::TaskInfo{ debug_name: "StructTwoWithTraitTwinNormal_set_two", port: None, mode: flutter_rust_bridge::for_generated::FfiCallMode::Sync }, move || { 
            let message = unsafe { flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(ptr_, rust_vec_len_, data_len_) };
            let mut deserializer = flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            let api_that = <RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructTwoWithTraitTwinNormal>>>::sse_decode(&mut deserializer);
let api_two = <i32>::sse_decode(&mut deserializer);deserializer.end();
                transform_result_sse((move || {
                    let mut api_that_decoded = None;
let decode_indices_ = flutter_rust_bridge::for_generated::rust_auto_opaque_decode_compute_order(vec![flutter_rust_bridge::for_generated::rust_auto_opaque_lock_order_info(&api_that, 0, true)]);
        for i in decode_indices_ {
            match i {
                0 => api_that_decoded = Some(flutter_rust_bridge::for_generated::rust_auto_opaque_decode_sync_ref_mut(&api_that)),
                _ => unreachable!(),
            }
        }
        let mut api_that = api_that_decoded.unwrap();
 Result::<_,()>::Ok({ { api_that.two = api_two; }; })
                })()) })
}
fn wire__crate__api__minimal__StructTwoWithTraitTwinNormal_simple_trait_fn_receiver_borrow_twin_normal_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::SseCodec,_,_>(flutter_rust_bridge::for_generated::TaskInfo{ debug_name: "StructTwoWithTraitTwinNormal_simple_trait_fn_receiver_borrow_twin_normal", port: Some(port_), mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal }, move || { 
            let message = unsafe { flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(ptr_, rust_vec_len_, data_len_) };
            let mut deserializer = flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            let api_that = <RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructTwoWithTraitTwinNormal>>>::sse_decode(&mut deserializer);deserializer.end(); move |context|  {
                    transform_result_sse((move ||  {
                        let mut api_that_decoded = None;
let decode_indices_ = flutter_rust_bridge::for_generated::rust_auto_opaque_decode_compute_order(vec![flutter_rust_bridge::for_generated::rust_auto_opaque_lock_order_info(&api_that, 0, false)]);
        for i in decode_indices_ {
            match i {
                0 => api_that_decoded = Some(flutter_rust_bridge::for_generated::rust_auto_opaque_decode_sync_ref(&api_that)),
                _ => unreachable!(),
            }
        }
        let api_that = api_that_decoded.unwrap();
 Result::<_,()>::Ok(crate::api::minimal::StructTwoWithTraitTwinNormal::simple_trait_fn_receiver_borrow_twin_normal(&api_that))
                    })())
                } })
}
fn wire__crate__api__minimal__StructTwoWithTraitTwinNormal_simple_trait_fn_twin_normal_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::SseCodec,_,_>(flutter_rust_bridge::for_generated::TaskInfo{ debug_name: "StructTwoWithTraitTwinNormal_simple_trait_fn_twin_normal", port: Some(port_), mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal }, move || { 
            let message = unsafe { flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(ptr_, rust_vec_len_, data_len_) };
            let mut deserializer = flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            let api_value = <i32>::sse_decode(&mut deserializer);deserializer.end(); move |context|  {
                    transform_result_sse((move ||  {
                         Result::<_,()>::Ok(crate::api::minimal::StructTwoWithTraitTwinNormal::simple_trait_fn_twin_normal(api_value))
                    })())
                } })
}
fn wire__crate__api__minimal__StructTwoWithTraitTwinNormal_simple_trait_fn_with_default_impl_twin_normal_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::SseCodec,_,_>(flutter_rust_bridge::for_generated::TaskInfo{ debug_name: "StructTwoWithTraitTwinNormal_simple_trait_fn_with_default_impl_twin_normal", port: Some(port_), mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal }, move || { 
            let message = unsafe { flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(ptr_, rust_vec_len_, data_len_) };
            let mut deserializer = flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            deserializer.end(); move |context|  {
                    transform_result_sse((move ||  {
                         Result::<_,()>::Ok(crate::api::minimal::StructTwoWithTraitTwinNormal::simple_trait_fn_with_default_impl_twin_normal())
                    })())
                } })
}
fn wire__crate__api__minimal__init_app_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::SseCodec, _, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "init_app",
            port: Some(port_),
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal,
        },
        move || {
            let message = unsafe {
                flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(
                    ptr_,
                    rust_vec_len_,
                    data_len_,
                )
            };
            let mut deserializer =
                flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            deserializer.end();
            move |context| {
                transform_result_sse((move || {
                    Result::<_, ()>::Ok({
                        crate::api::minimal::init_app();
                    })
                })())
            }
        },
    )
}
fn wire__crate__api__minimal__minimal_adder_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::SseCodec, _, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "minimal_adder",
            port: Some(port_),
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal,
        },
        move || {
            let message = unsafe {
                flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(
                    ptr_,
                    rust_vec_len_,
                    data_len_,
                )
            };
            let mut deserializer =
                flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            let api_a = <i32>::sse_decode(&mut deserializer);
            let api_b = <i32>::sse_decode(&mut deserializer);
            deserializer.end();
            move |context| {
                transform_result_sse((move || {
                    Result::<_, ()>::Ok(crate::api::minimal::minimal_adder(api_a, api_b))
                })())
            }
        },
    )
}
fn wire__crate__frb_generated__hello_generate_trait_impl_enum_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::SseCodec, _, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "hello_generate_trait_impl_enum",
            port: Some(port_),
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal,
        },
        move || {
            let message = unsafe {
                flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(
                    ptr_,
                    rust_vec_len_,
                    data_len_,
                )
            };
            let mut deserializer =
                flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            let api_a =
                <crate::frb_generated::SimpleTraitTwinNormalImpl>::sse_decode(&mut deserializer);
            deserializer.end();
            move |context| {
                transform_result_sse((move || {
                    Result::<_, ()>::Ok({
                        crate::frb_generated::hello_generate_trait_impl_enum(api_a);
                    })
                })())
            }
        },
    )
}

// Section: related_funcs

flutter_rust_bridge::frb_generated_moi_arc_impl_value!(
    flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructOneWithTraitTwinNormal>
);
flutter_rust_bridge::frb_generated_moi_arc_impl_value!(
    flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructTwoWithTraitTwinNormal>
);

// Section: extra_from_parser

enum SimpleTraitTwinNormalImpl {
    Hello(i32),
}

pub fn hello_generate_trait_impl_enum(a: SimpleTraitTwinNormalImpl) {
    let _ = a;
}

// Section: dart2rust

impl SseDecode for StructOneWithTraitTwinNormal {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut inner = <RustOpaqueMoi<
            flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructOneWithTraitTwinNormal>,
        >>::sse_decode(deserializer);
        return flutter_rust_bridge::for_generated::rust_auto_opaque_decode_owned(inner);
    }
}

impl SseDecode for StructTwoWithTraitTwinNormal {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut inner = <RustOpaqueMoi<
            flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructTwoWithTraitTwinNormal>,
        >>::sse_decode(deserializer);
        return flutter_rust_bridge::for_generated::rust_auto_opaque_decode_owned(inner);
    }
}

impl SseDecode
    for RustOpaqueMoi<
        flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructOneWithTraitTwinNormal>,
    >
{
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut inner = <usize>::sse_decode(deserializer);
        return decode_rust_opaque_moi(inner);
    }
}

impl SseDecode
    for RustOpaqueMoi<
        flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructTwoWithTraitTwinNormal>,
    >
{
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut inner = <usize>::sse_decode(deserializer);
        return decode_rust_opaque_moi(inner);
    }
}

impl SseDecode for i32 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_i32::<NativeEndian>().unwrap()
    }
}

impl SseDecode for crate::frb_generated::SimpleTraitTwinNormalImpl {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut tag_ = <i32>::sse_decode(deserializer);
        match tag_ {
            0 => {
                let mut var_field0 = <i32>::sse_decode(deserializer);
                return crate::frb_generated::SimpleTraitTwinNormalImpl::Hello(var_field0);
            }
            _ => {
                unimplemented!("");
            }
        }
    }
}

impl SseDecode for () {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {}
}

impl SseDecode for usize {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_u64::<NativeEndian>().unwrap() as _
    }
}

impl SseDecode for bool {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_u8().unwrap() != 0
    }
}

fn pde_ffi_dispatcher_primary_impl(
    func_id: i32,
    port: flutter_rust_bridge::for_generated::MessagePort,
    ptr: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len: i32,
    data_len: i32,
) {
    // Codec=Pde (Serialization + dispatch), see doc to use other codecs
    match func_id {
                        3 => wire__crate__api__minimal__StructOneWithTraitTwinNormal_simple_trait_fn_receiver_borrow_twin_normal_impl(port, ptr, rust_vec_len, data_len),
4 => wire__crate__api__minimal__StructOneWithTraitTwinNormal_simple_trait_fn_twin_normal_impl(port, ptr, rust_vec_len, data_len),
5 => wire__crate__api__minimal__StructOneWithTraitTwinNormal_simple_trait_fn_with_default_impl_twin_normal_impl(port, ptr, rust_vec_len, data_len),
8 => wire__crate__api__minimal__StructTwoWithTraitTwinNormal_simple_trait_fn_receiver_borrow_twin_normal_impl(port, ptr, rust_vec_len, data_len),
9 => wire__crate__api__minimal__StructTwoWithTraitTwinNormal_simple_trait_fn_twin_normal_impl(port, ptr, rust_vec_len, data_len),
10 => wire__crate__api__minimal__StructTwoWithTraitTwinNormal_simple_trait_fn_with_default_impl_twin_normal_impl(port, ptr, rust_vec_len, data_len),
14 => wire__crate__api__minimal__init_app_impl(port, ptr, rust_vec_len, data_len),
15 => wire__crate__api__minimal__minimal_adder_impl(port, ptr, rust_vec_len, data_len),
16 => wire__crate__frb_generated__hello_generate_trait_impl_enum_impl(port, ptr, rust_vec_len, data_len),
                        _ => unreachable!(),
                    }
}

fn pde_ffi_dispatcher_sync_impl(
    func_id: i32,
    ptr: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len: i32,
    data_len: i32,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartSse {
    // Codec=Pde (Serialization + dispatch), see doc to use other codecs
    match func_id {
        1 => wire__crate__api__minimal__StructOneWithTraitTwinNormal_get_one_impl(
            ptr,
            rust_vec_len,
            data_len,
        ),
        2 => wire__crate__api__minimal__StructOneWithTraitTwinNormal_set_one_impl(
            ptr,
            rust_vec_len,
            data_len,
        ),
        6 => wire__crate__api__minimal__StructTwoWithTraitTwinNormal_get_two_impl(
            ptr,
            rust_vec_len,
            data_len,
        ),
        7 => wire__crate__api__minimal__StructTwoWithTraitTwinNormal_set_two_impl(
            ptr,
            rust_vec_len,
            data_len,
        ),
        _ => unreachable!(),
    }
}

// Section: rust2dart

// Codec=Dco (DartCObject based), see doc to use other codecs
impl flutter_rust_bridge::IntoDart for FrbWrapper<StructOneWithTraitTwinNormal> {
    fn into_dart(self) -> flutter_rust_bridge::for_generated::DartAbi {
        flutter_rust_bridge::for_generated::rust_auto_opaque_encode::<_, MoiArc<_>>(self.0)
            .into_dart()
    }
}
impl flutter_rust_bridge::for_generated::IntoDartExceptPrimitive
    for FrbWrapper<StructOneWithTraitTwinNormal>
{
}

impl flutter_rust_bridge::IntoIntoDart<FrbWrapper<StructOneWithTraitTwinNormal>>
    for StructOneWithTraitTwinNormal
{
    fn into_into_dart(self) -> FrbWrapper<StructOneWithTraitTwinNormal> {
        self.into()
    }
}

// Codec=Dco (DartCObject based), see doc to use other codecs
impl flutter_rust_bridge::IntoDart for FrbWrapper<StructTwoWithTraitTwinNormal> {
    fn into_dart(self) -> flutter_rust_bridge::for_generated::DartAbi {
        flutter_rust_bridge::for_generated::rust_auto_opaque_encode::<_, MoiArc<_>>(self.0)
            .into_dart()
    }
}
impl flutter_rust_bridge::for_generated::IntoDartExceptPrimitive
    for FrbWrapper<StructTwoWithTraitTwinNormal>
{
}

impl flutter_rust_bridge::IntoIntoDart<FrbWrapper<StructTwoWithTraitTwinNormal>>
    for StructTwoWithTraitTwinNormal
{
    fn into_into_dart(self) -> FrbWrapper<StructTwoWithTraitTwinNormal> {
        self.into()
    }
}

// Codec=Dco (DartCObject based), see doc to use other codecs
impl flutter_rust_bridge::IntoDart for crate::frb_generated::SimpleTraitTwinNormalImpl {
    fn into_dart(self) -> flutter_rust_bridge::for_generated::DartAbi {
        match self {
            crate::frb_generated::SimpleTraitTwinNormalImpl::Hello(field0) => {
                [0.into_dart(), field0.into_into_dart().into_dart()].into_dart()
            }
            _ => {
                unimplemented!("");
            }
        }
    }
}
impl flutter_rust_bridge::for_generated::IntoDartExceptPrimitive
    for crate::frb_generated::SimpleTraitTwinNormalImpl
{
}
impl flutter_rust_bridge::IntoIntoDart<crate::frb_generated::SimpleTraitTwinNormalImpl>
    for crate::frb_generated::SimpleTraitTwinNormalImpl
{
    fn into_into_dart(self) -> crate::frb_generated::SimpleTraitTwinNormalImpl {
        self
    }
}

impl SseEncode for StructOneWithTraitTwinNormal {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <RustOpaqueMoi<
            flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructOneWithTraitTwinNormal>,
        >>::sse_encode(
            flutter_rust_bridge::for_generated::rust_auto_opaque_encode::<_, MoiArc<_>>(self),
            serializer,
        );
    }
}

impl SseEncode for StructTwoWithTraitTwinNormal {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <RustOpaqueMoi<
            flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructTwoWithTraitTwinNormal>,
        >>::sse_encode(
            flutter_rust_bridge::for_generated::rust_auto_opaque_encode::<_, MoiArc<_>>(self),
            serializer,
        );
    }
}

impl SseEncode
    for RustOpaqueMoi<
        flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructOneWithTraitTwinNormal>,
    >
{
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        let (ptr, size) = self.sse_encode_raw();
        <usize>::sse_encode(ptr, serializer);
        <i32>::sse_encode(size, serializer);
    }
}

impl SseEncode
    for RustOpaqueMoi<
        flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructTwoWithTraitTwinNormal>,
    >
{
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        let (ptr, size) = self.sse_encode_raw();
        <usize>::sse_encode(ptr, serializer);
        <i32>::sse_encode(size, serializer);
    }
}

impl SseEncode for i32 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_i32::<NativeEndian>(self).unwrap();
    }
}

impl SseEncode for crate::frb_generated::SimpleTraitTwinNormalImpl {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        match self {
            crate::frb_generated::SimpleTraitTwinNormalImpl::Hello(field0) => {
                <i32>::sse_encode(0, serializer);
                <i32>::sse_encode(field0, serializer);
            }
            _ => {
                unimplemented!("");
            }
        }
    }
}

impl SseEncode for () {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {}
}

impl SseEncode for usize {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer
            .cursor
            .write_u64::<NativeEndian>(self as _)
            .unwrap();
    }
}

impl SseEncode for bool {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_u8(self as _).unwrap();
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
