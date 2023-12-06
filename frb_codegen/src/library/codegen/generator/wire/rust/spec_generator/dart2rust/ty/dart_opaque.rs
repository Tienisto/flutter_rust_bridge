use crate::codegen::generator::acc::Acc;
use crate::codegen::generator::misc::target::{Target, TargetOrCommon};
use crate::codegen::generator::wire::rust::spec_generator::base::*;
use crate::codegen::generator::wire::rust::spec_generator::dart2rust::impl_new_with_nullptr::generate_impl_new_with_nullptr_code_block;
use crate::codegen::generator::wire::rust::spec_generator::dart2rust::misc::{
    generate_class_from_fields, rust_wire_type_add_prefix_or_js_value, JS_VALUE,
};
use crate::codegen::generator::wire::rust::spec_generator::dart2rust::ty::rust_opaque::dart_opaque_or_generalized_rust_opaque_rust_wire_type;
use crate::codegen::generator::wire::rust::spec_generator::dart2rust::ty::WireRustGeneratorDart2RustTrait;
use crate::codegen::generator::wire::rust::spec_generator::extern_func::{
    ExternFunc, ExternFuncParam,
};
use crate::codegen::generator::wire::rust::spec_generator::output_code::WireRustOutputCode;
use crate::codegen::ir::ty::IrTypeTrait;
use crate::misc::consts::HANDLER_NAME;

impl<'a> WireRustGeneratorDart2RustTrait for DartOpaqueWireRustGenerator<'a> {
    fn generate_impl_wire2api_body(&self) -> Acc<Option<String>> {
        Acc::new(|target| {
            match target {
            TargetOrCommon::Io => Some(
                "unsafe { flutter_rust_bridge::for_generated::wire2api_dart_opaque(self) }"
                    .to_owned(),
            ),
            TargetOrCommon::Wasm => Some(
                format!("unsafe {{ flutter_rust_bridge::for_generated::wire2api_dart_opaque(&*{HANDLER_NAME}, self) }}"),
            ),
            TargetOrCommon::Common => None,
        }
        })
    }

    fn generate_related_funcs(&self) -> Acc<WireRustOutputCode> {
        Acc {
            io: vec![ExternFunc {
                func_name: "dart_opaque_dart2rust_api2wire".into(),
                params: vec![ExternFuncParam {
                    name: "handle".to_owned(),
                    rust_type: "flutter_rust_bridge::for_generated::dart_sys::Dart_Handle".to_owned(),
                    dart_type: "NOT_USED".into(),
                }.clone()],
                return_type: Some("*const std::ffi::c_void".into()),
                body: format!("unsafe {{ flutter_rust_bridge::for_generated::dart_opaque_dart2rust_api2wire(&*{HANDLER_NAME}, handle) }}").into(),
                target: Target::Io,
            }].into(),
            ..Default::default()
        }
    }

    fn rust_wire_type(&self, target: Target) -> String {
        dart_opaque_or_generalized_rust_opaque_rust_wire_type(target)
    }
}
