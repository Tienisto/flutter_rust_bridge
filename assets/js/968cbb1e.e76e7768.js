"use strict";(self.webpackChunkflutter_rust_bridge=self.webpackChunkflutter_rust_bridge||[]).push([[4423],{3905:(e,t,n)=>{n.d(t,{Zo:()=>u,kt:()=>m});var r=n(7294);function a(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function o(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function i(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?o(Object(n),!0).forEach((function(t){a(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):o(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function s(e,t){if(null==e)return{};var n,r,a=function(e,t){if(null==e)return{};var n,r,a={},o=Object.keys(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||(a[n]=e[n]);return a}(e,t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(a[n]=e[n])}return a}var l=r.createContext({}),c=function(e){var t=r.useContext(l),n=t;return e&&(n="function"==typeof e?e(t):i(i({},t),e)),n},u=function(e){var t=c(e.components);return r.createElement(l.Provider,{value:t},e.children)},d={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},p=r.forwardRef((function(e,t){var n=e.components,a=e.mdxType,o=e.originalType,l=e.parentName,u=s(e,["components","mdxType","originalType","parentName"]),p=c(n),m=a,f=p["".concat(l,".").concat(m)]||p[m]||d[m]||o;return n?r.createElement(f,i(i({ref:t},u),{},{components:n})):r.createElement(f,i({ref:t},u))}));function m(e,t){var n=arguments,a=t&&t.mdxType;if("string"==typeof e||a){var o=n.length,i=new Array(o);i[0]=p;var s={};for(var l in t)hasOwnProperty.call(t,l)&&(s[l]=t[l]);s.originalType=e,s.mdxType="string"==typeof e?e:a,i[1]=s;for(var c=2;c<o;c++)i[c]=n[c];return r.createElement.apply(null,i)}return r.createElement.apply(null,n)}p.displayName="MDXCreateElement"},855:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>l,contentTitle:()=>i,default:()=>d,frontMatter:()=>o,metadata:()=>s,toc:()=>c});var r=n(7462),a=(n(7294),n(3905));const o={},i="Codec",s={unversionedId:"guides/miscellaneous/codec",id:"guides/miscellaneous/codec",title:"Codec",description:"Main codec",source:"@site/docs/guides/miscellaneous/codec.md",sourceDirName:"guides/miscellaneous",slug:"/guides/miscellaneous/codec",permalink:"/flutter_rust_bridge/guides/miscellaneous/codec",draft:!1,editUrl:"https://github.com/fzyzcjy/flutter_rust_bridge/tree/master/website/docs/guides/miscellaneous/codec.md",tags:[],version:"current",frontMatter:{},sidebar:"tutorialSidebar",previous:{title:"Extra Dart code",permalink:"/flutter_rust_bridge/guides/miscellaneous/dart-code"},next:{title:"Run in build.rs",permalink:"/flutter_rust_bridge/guides/miscellaneous/build-rs"}},l={},c=[{value:"Main codec",id:"main-codec",level:2},{value:"Comparison",id:"comparison",level:3},{value:"RustOpaque codec",id:"rustopaque-codec",level:2}],u={toc:c};function d(e){let{components:t,...n}=e;return(0,a.kt)("wrapper",(0,r.Z)({},u,n,{components:t,mdxType:"MDXLayout"}),(0,a.kt)("h1",{id:"codec"},"Codec"),(0,a.kt)("h2",{id:"main-codec"},"Main codec"),(0,a.kt)("p",null,'The "codec" here means how Dart data becomes accessible from the Rust side, and vise versa.\nFor example, suppose we have a Dart object of class ',(0,a.kt)("inlineCode",{parentName:"p"},"class MyClass { String name; }"),".\nThen, the chosen codec will do the job of constructing a Rust object of type ",(0,a.kt)("inlineCode",{parentName:"p"},"struct MyClass { name: String }"),".\nSimilar things hold for Rust-to-Dart, and also hold for non-encodable types (opaque types), etc."),(0,a.kt)("p",null,"Currently, we have three codecs:"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("strong",{parentName:"li"},"CST")," (C-STruct):\nMimic how humans transfer the fields.\nFor example (simplified for demonstration),\ncreate a C struct ",(0,a.kt)("inlineCode",{parentName:"li"},"struct MyClass { char* name_ptr; int name_arr_len; }")," as the intermediate step."),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("strong",{parentName:"li"},"DCO")," (Dart_CObject-based):\nUse the ",(0,a.kt)("a",{parentName:"li",href:"https://github.com/dart-lang/sdk/blob/72f6db9261a7d0c96c5fc11ed4bd9f17ccd7d071/runtime/include/dart_native_api.h#L63"},"Dart_CObject"),"\nas the intermediate step."),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("strong",{parentName:"li"},"SSE")," (Simple SErialization): Serialize everything into a byte buffer, and deserialize on the other side.")),(0,a.kt)("p",null,"In addition, CST is implemented for Dart-to-Rust, DCO for Rust-to-Dart,\nand SSE for both directions."),(0,a.kt)("p",null,"Currently, CST+DCO is the default choice. To use SSE instead, specify ",(0,a.kt)("inlineCode",{parentName:"p"},"#[frb(serialize)]")," to your function.\n(The attribute syntax may be changed in the future, but should be as minimal as changing the name.)"),(0,a.kt)("p",null,"For simplicity of implementation, Rust-Call-Dart uses DCO+SSE and cannot be changed currently,\nbut this should usually be no problem.\nIf you find any difficulties due to this, feel free to create an issue."),(0,a.kt)("h3",{id:"comparison"},"Comparison"),(0,a.kt)("p",null,"Firstly, for most use cases, both approaches should be good enough.\nBut if you want to tune the fast bridge to be even faster for whatever reason, here are some suggestions."),(0,a.kt)("p",null,"Because of the difference in implementation,\nthe CST/DCO codec has less memory copies,\nthus is especially suitable when you have things like large ",(0,a.kt)("inlineCode",{parentName:"p"},"Vec<u8>")," (",(0,a.kt)("inlineCode",{parentName:"p"},"Uint8List"),").\nOn the other hand,\nif you are serializing a lot of small objects,\nSSE codec may need less heap memory allocation calls,\nthus may outperform."),(0,a.kt)("p",null,"For some benchmarks on the typical cases, which are evaluated continuously on CI,\nplease refer to ",(0,a.kt)("a",{parentName:"p",href:"../performance/overview"},"this page"),"."),(0,a.kt)("h2",{id:"rustopaque-codec"},"RustOpaque codec"),(0,a.kt)("p",null,'There are currently two codecs underlying the "arbitrary Rust types" features.'),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("strong",{parentName:"li"},"NOM")," (NOrmal Memory): The commonly seen standard one."),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("strong",{parentName:"li"},"MOI")," (Map Of Ids): Use a HashMap from ids to objects.")),(0,a.kt)("p",null,"The MOI codec mainly helps as an extra test utility.\nHowever, if you are super worried about code safety, this mode may be useful.\nIt can be enabled by ",(0,a.kt)("inlineCode",{parentName:"p"},"#[frb(rust_opaque_codec_moi)]")," annotation on functions\n(this name may be changed, but even if changed, will only be a simple rename).\nIf needed, there can also be a global flag (feel free create an issue on GitHub)."))}d.isMDXComponent=!0}}]);