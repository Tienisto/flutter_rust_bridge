use std::fs;
use std::path::Path;

pub(crate) fn generate_frb_rust_source_code(repo_base_dir: &Path) -> anyhow::Result<()> {
    let path_target = repo_base_dir
        .join("frb_rust")
        .join("src")
        .join("internal_generated")
        .join("mod.rs");

    let text = format!(
        r#"
            #[doc(hidden)]
            #[macro_export]
            macro_rules! frb_generated_io_extern_func {{
                () => {{
                    #[no_mangle]
                    pub extern "C" fn frb_pde_ffi_dispatcher_primary(
                        func_id: i32,
                        port: i64,
                        ptr: *mut u8,
                        rust_vec_len: i32,
                        data_len: i32,
                    ) {{
                        pde_ffi_dispatcher_primary_impl(func_id, port, ptr, rust_vec_len, data_len)
                    }}

                    #[no_mangle]
                    pub extern "C" fn frb_pde_ffi_dispatcher_sync(
                        func_id: i32,
                        ptr: *mut u8,
                        rust_vec_len: i32,
                        data_len: i32,
                    ) -> $crate::for_generated::WireSyncRust2DartSse {{
                        pde_ffi_dispatcher_sync_impl(func_id, ptr, rust_vec_len, data_len)
                    }}
                }};
            }}
            
            #[doc(hidden)]
            #[macro_export]
            macro_rules! frb_generated_web_extern_func {{
                () => {{
                    #[wasm_bindgen]
                    pub fn frb_pde_ffi_dispatcher_primary(
                        func_id: i32,
                        port: $crate::for_generated::MessagePort,
                        ptr: $crate::for_generated::PlatformGeneralizedUint8ListPtr,
                        rust_vec_len: i32,
                        data_len: i32,
                    ) {{
                        pde_ffi_dispatcher_primary_impl(func_id, port, ptr, rust_vec_len, data_len)
                    }}

                    #[wasm_bindgen]
                    pub fn frb_pde_ffi_dispatcher_sync(
                        func_id: i32,
                        ptr: $crate::for_generated::PlatformGeneralizedUint8ListPtr,
                        rust_vec_len: i32,
                        data_len: i32,
                    ) -> $crate::for_generated::WireSyncRust2DartSse {{
                        pde_ffi_dispatcher_sync_impl(func_id, ptr, rust_vec_len, data_len)
                    }}
                }};
            }}
        "#
    );

    fs::write(path_target, text)?;
    Ok(())
}
