// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.24.

// Section: imports

use super::*;
use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::transform_result_dco;
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: boilerplate

flutter_rust_bridge::frb_generated_boilerplate_io!();

// Section: dart2rust

impl CstDecode<crate::api::minimal::BMPimage> for wire_cst_bm_pimage {
    // Codec=Cst (C-struct based), see doc to use other codecs
    fn cst_decode(self) -> crate::api::minimal::BMPimage {
        crate::api::minimal::BMPimage {
            width: self.width.cst_decode(),
            height: self.height.cst_decode(),
            bmp: self.bmp.cst_decode(),
        }
    }
}
impl CstDecode<Vec<u8>> for *mut wire_cst_list_prim_u_8_strict {
    // Codec=Cst (C-struct based), see doc to use other codecs
    fn cst_decode(self) -> Vec<u8> {
        unsafe {
            let wrap = flutter_rust_bridge::for_generated::box_from_leak_ptr(self);
            flutter_rust_bridge::for_generated::vec_from_leak_ptr(wrap.ptr, wrap.len)
        }
    }
}
impl NewWithNullPtr for wire_cst_bm_pimage {
    fn new_with_null_ptr() -> Self {
        Self {
            width: Default::default(),
            height: Default::default(),
            bmp: core::ptr::null_mut(),
        }
    }
}
impl Default for wire_cst_bm_pimage {
    fn default() -> Self {
        Self::new_with_null_ptr()
    }
}

#[no_mangle]
pub extern "C" fn frbgen_frb_example_dart_minimal_wire_init_app(port_: i64) {
    wire_init_app_impl(port_)
}

#[no_mangle]
pub extern "C" fn frbgen_frb_example_dart_minimal_wire_minimal_adder(port_: i64, a: i32, b: i32) {
    wire_minimal_adder_impl(port_, a, b)
}

#[no_mangle]
pub extern "C" fn frbgen_frb_example_dart_minimal_wire_render_image(
    port_: i64,
    width: i64,
    height: i64,
) {
    wire_render_image_impl(port_, width, height)
}

#[no_mangle]
pub extern "C" fn frbgen_frb_example_dart_minimal_cst_new_list_prim_u_8_strict(
    len: i32,
) -> *mut wire_cst_list_prim_u_8_strict {
    let ans = wire_cst_list_prim_u_8_strict {
        ptr: flutter_rust_bridge::for_generated::new_leak_vec_ptr(Default::default(), len),
        len,
    };
    flutter_rust_bridge::for_generated::new_leak_box_ptr(ans)
}

#[repr(C)]
#[derive(Clone, Copy)]
pub struct wire_cst_bm_pimage {
    width: u32,
    height: u32,
    bmp: *mut wire_cst_list_prim_u_8_strict,
}
#[repr(C)]
#[derive(Clone, Copy)]
pub struct wire_cst_list_prim_u_8_strict {
    ptr: *mut u8,
    len: i32,
}
