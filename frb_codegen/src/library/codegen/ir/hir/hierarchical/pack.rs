use crate::codegen::ir::hir::hierarchical::crates::HirCrate;
use crate::codegen::ir::hir::hierarchical::module::HirModule;
use crate::utils::crate_name::CrateName;

#[derive(Debug, Clone, serde::Serialize)]
pub struct HirPack {
    pub(crate) crates: Vec<HirCrate>,
}

impl HirPack {
    pub(crate) fn get_mut_crate(&mut self, name: &CrateName) -> Option<&mut HirCrate> {
        (self.crates.iter_mut()).find(|x| x.name.namespace() == name.namespace())
    }

    pub(crate) fn visit<'a, F: FnMut(&'a HirModule)>(&'a self, f: &mut F) {
        for hir_crate in &self.crates {
            &hir_crate.root_module.visit(f);
        }
    }
}
