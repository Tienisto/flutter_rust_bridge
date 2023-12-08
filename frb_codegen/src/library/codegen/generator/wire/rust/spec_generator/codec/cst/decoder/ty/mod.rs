mod boxed;
mod dart_fn;
mod dart_opaque;
mod delegate;
mod dynamic;
mod enumeration;
mod general_list;
mod optional;
mod ownership;
mod primitive;
mod primitive_list;
mod record;
mod rust_auto_opaque;
mod rust_opaque;
mod structure;
mod unencodable;

use crate::codegen::generator::acc::Acc;
use crate::codegen::generator::codec::structs::CodecMode;
use crate::codegen::generator::misc::target::Target;
use crate::codegen::generator::wire::rust::spec_generator::base::WireRustGeneratorImplTrait;
use crate::codegen::generator::wire::rust::spec_generator::codec::cst::base::*;
use crate::codegen::generator::wire::rust::spec_generator::output_code::WireRustOutputCode;
use crate::library::codegen::ir::ty::IrTypeTrait;
use convert_case::{Case, Casing};
use enum_dispatch::enum_dispatch;
use std::borrow::Cow;

#[enum_dispatch]
pub(crate) trait WireRustCodecCstGeneratorDecoderTrait {
    fn generate_decoder_class(&self) -> Option<String> {
        None
    }

    fn generate_impl_decode_body(&self) -> Acc<Option<String>> {
        Default::default()
    }

    fn generate_impl_decode_jsvalue_body(&self) -> Option<Cow<str>> {
        None
    }

    fn generate_impl_new_with_nullptr(&self) -> Option<WireRustOutputCode> {
        None
    }

    fn generate_allocate_funcs(&self) -> Acc<WireRustOutputCode> {
        Default::default()
    }

    fn generate_wire_func_call_decode(&self, name: &str, codec_mode: CodecMode) -> String {
        format!(
            "{name}.{code_mode}_decode()",
            code_mode = codec_mode.to_string().to_case(Case::Snake)
        )
    }

    fn generate_wire_func_param_api_type(&self) -> Option<String> {
        None
    }

    fn rust_wire_type(&self, target: Target) -> String;

    fn rust_wire_modifier(&self, target: Target) -> String {
        if self.rust_wire_is_pointer(target) {
            "*mut ".to_string()
        } else {
            "".to_string()
        }
    }

    fn rust_wire_is_pointer(&self, _target: Target) -> bool {
        false
    }
}
