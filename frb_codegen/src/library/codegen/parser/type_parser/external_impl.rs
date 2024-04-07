use anyhow::Result;
use proc_macro2::Ident;
use syn::{parse_str, Type, visit_mut, visit_mut::VisitMut};

pub(crate) fn parse_type(mut ty: Type) -> Result<Type> {
    println!("parse_type {ty:?}");

    struct Visitor;
    impl VisitMut for Visitor {
        fn visit_ident_mut(&mut self, node: &mut Ident) {
            if let Some(name) = parse_name(&node.to_string()).unwrap() {
                println!("hi {node:?} {name}");
                *node = parse_str(&name).unwrap();
            }

            visit_mut::visit_ident_mut(self, node);
        }
    }
    Visitor.visit_type_mut(&mut ty);
    Ok(ty)
}

pub(crate) fn parse_name(raw_name: &str) -> Result<Option<String>> {
    const DUMMY_STRUCT_PREFIX: &str = "__external_impl__";
    Ok(if raw_name.starts_with(DUMMY_STRUCT_PREFIX) {
        Some(String::from_utf8(hex::decode(
            &raw_name[DUMMY_STRUCT_PREFIX.len()..],
        )?)?)
    } else {
        None
    })
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_parse_external_impl_dummy_struct_name() {
        assert_eq!(parse_name("One<Two,Three>").unwrap(), None);
        assert_eq!(
            parse_name("__external_impl__4f6e65203c2054776f2c205468726565203e").unwrap(),
            Some("One < Two, Three >".to_owned()),
        );
    }
}
