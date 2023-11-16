use crate::generator::dart::ty::*;
use crate::ir::*;
use crate::target::Acc;
use crate::type_dart_generator_struct;

type_dart_generator_struct!(TypeRustOpaqueGenerator, IrTypeRustOpaque);

impl TypeDartGeneratorTrait for TypeRustOpaqueGenerator<'_> {
    fn api2wire_body(&self) -> Acc<Option<String>> {
        Acc {
            io: Some(format!(
                "final ptr = inner.new_{0}();
                _api_fill_to_wire_{0}(raw, ptr);
                return ptr;",
                self.ir.safe_ident(),
            )),
            wasm: Some("return raw.shareOrMove();".to_owned()),
            ..Default::default()
        }
    }

    fn api_fill_to_wire_body(&self) -> Option<String> {
        Some("wireObj.ptr = apiObj.shareOrMove();".into())
    }

    fn wire2api_body(&self) -> String {
        let bridge = if self.context.config.use_bridge_in_method {
            "this"
        } else {
            ""
        };
        format!(
            "return {0}.fromRaw(raw[0], raw[1], {bridge});",
            self.ir.dart_api_type()
        )
    }
}
