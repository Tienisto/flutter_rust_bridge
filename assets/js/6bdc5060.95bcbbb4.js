"use strict";(self.webpackChunkflutter_rust_bridge=self.webpackChunkflutter_rust_bridge||[]).push([[7589],{3905:(e,t,r)=>{r.d(t,{Zo:()=>l,kt:()=>d});var a=r(7294);function n(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}function i(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);t&&(a=a.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,a)}return r}function u(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?i(Object(r),!0).forEach((function(t){n(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):i(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function o(e,t){if(null==e)return{};var r,a,n=function(e,t){if(null==e)return{};var r,a,n={},i=Object.keys(e);for(a=0;a<i.length;a++)r=i[a],t.indexOf(r)>=0||(n[r]=e[r]);return n}(e,t);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(e);for(a=0;a<i.length;a++)r=i[a],t.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(n[r]=e[r])}return n}var p=a.createContext({}),s=function(e){var t=a.useContext(p),r=t;return e&&(r="function"==typeof e?e(t):u(u({},t),e)),r},l=function(e){var t=s(e.components);return a.createElement(p.Provider,{value:t},e.children)},c={inlineCode:"code",wrapper:function(e){var t=e.children;return a.createElement(a.Fragment,{},t)}},y=a.forwardRef((function(e,t){var r=e.components,n=e.mdxType,i=e.originalType,p=e.parentName,l=o(e,["components","mdxType","originalType","parentName"]),y=s(r),d=n,m=y["".concat(p,".").concat(d)]||y[d]||c[d]||i;return r?a.createElement(m,u(u({ref:t},l),{},{components:r})):a.createElement(m,u({ref:t},l))}));function d(e,t){var r=arguments,n=t&&t.mdxType;if("string"==typeof e||n){var i=r.length,u=new Array(i);u[0]=y;var o={};for(var p in t)hasOwnProperty.call(t,p)&&(o[p]=t[p]);o.originalType=e,o.mdxType="string"==typeof e?e:n,u[1]=o;for(var s=2;s<i;s++)u[s]=r[s];return a.createElement.apply(null,u)}return a.createElement.apply(null,r)}y.displayName="MDXCreateElement"},9607:(e,t,r)=>{r.r(t),r.d(t,{assets:()=>p,contentTitle:()=>u,default:()=>c,frontMatter:()=>i,metadata:()=>o,toc:()=>s});var a=r(7462),n=(r(7294),r(3905));const i={},u="Manual arbitrary Rust type",o={unversionedId:"guides/types/arbitrary/rust-opaque",id:"guides/types/arbitrary/rust-opaque",title:"Manual arbitrary Rust type",description:"Usually the automatic arbitrary Rust type is sufficient,",source:"@site/docs/guides/types/arbitrary/rust-opaque.md",sourceDirName:"guides/types/arbitrary",slug:"/guides/types/arbitrary/rust-opaque",permalink:"/flutter_rust_bridge/guides/types/arbitrary/rust-opaque",draft:!1,editUrl:"https://github.com/fzyzcjy/flutter_rust_bridge/tree/master/website/docs/guides/types/arbitrary/rust-opaque.md",tags:[],version:"current",frontMatter:{},sidebar:"tutorialSidebar",previous:{title:"Automatic arbitrary Dart type",permalink:"/flutter_rust_bridge/guides/types/arbitrary/dart-opaque"},next:{title:"Dart dynamic type",permalink:"/flutter_rust_bridge/guides/types/arbitrary/dart-dynamic"}},p={},s=[{value:"Example",id:"example",level:2},{value:"Trait objects",id:"trait-objects",level:2},{value:"Naming the inner type",id:"naming-the-inner-type",level:2},{value:"Implementation details",id:"implementation-details",level:2}],l={toc:s};function c(e){let{components:t,...r}=e;return(0,n.kt)("wrapper",(0,a.Z)({},l,r,{components:t,mdxType:"MDXLayout"}),(0,n.kt)("h1",{id:"manual-arbitrary-rust-type"},"Manual arbitrary Rust type"),(0,n.kt)("p",null,"Usually the ",(0,n.kt)("a",{parentName:"p",href:"rust-auto-opaque"},"automatic arbitrary Rust type")," is sufficient,\nand thus there is no need to manually write down anything.\nHowever, if you somehow want lower-level control, here is the type for you."),(0,n.kt)("p",null,"In addition, there is ",(0,n.kt)("inlineCode",{parentName:"p"},"RustAutoOpaque<YourArbitraryType>"),",\nwhich is a simple type alias of ",(0,n.kt)("inlineCode",{parentName:"p"},"RustOpaque<RwLock<YourArbitraryType>>"),".\nThis is convenient when you want to sometimes have ",(0,n.kt)("a",{parentName:"p",href:"rust-auto-opaque"},"everything automatically done"),",\nand sometimes have the manual low-level control."),(0,n.kt)("h2",{id:"example"},"Example"),(0,n.kt)("p",null,"Rust:"),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-rust"},"struct ArbitraryData { ... }\npub fn use_opaque(a: RustOpaque<ArbitraryData>) { ... }\npub fn even_use_locks(b: RustOpaque<Mutex<ArbitraryData>) -> RustOpaque<RwLock<ArbitraryData>> { ... }\nenum AnEnumContainingOpaque { Hello(RustOpaque<ArbitraryData>), World(i32) }\n...\n")),(0,n.kt)("p",null,"And use it in Dart:"),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-dart"},"var opaque = await api.functionThatCreatesSomeOpaqueData();\nawait api.functionThatUsesSomeOpaqueData(opaque);\nopaque.dispose();\n")),(0,n.kt)("h2",{id:"trait-objects"},"Trait objects"),(0,n.kt)("p",null,"Trait objects can be put behind opaque pointers. For example, this declaration can\nbe used across the FFI border:"),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-rust"},'pub struct DebugWrapper(pub RustOpaque<Box<dyn Debug>>);\n\n// creating a DebugWrapper using the opaque_dyn macro\nlet wrap = DebugWrapper(opaque_dyn!("foobar"));\n// it\'s possible to name it directly\npub struct DebugWrapper2(pub RustOpaque<Box<dyn Debug + Send + Sync + UnwindSafe + RefUnwindSafe>>);\n')),(0,n.kt)("h2",{id:"naming-the-inner-type"},"Naming the inner type"),(0,n.kt)("p",null,"When an ",(0,n.kt)("inlineCode",{parentName:"p"},"RustOpaque<T>")," is transformed into a Dart type, T's string\nrepresentation undergoes some transformations to become a valid Dart type:"),(0,n.kt)("ul",null,(0,n.kt)("li",{parentName:"ul"},"Rust keywords (dyn, 'static, etc.) are automatically removed."),(0,n.kt)("li",{parentName:"ul"},"ASCII alphanumerics are kept, all other characters are ignored.")),(0,n.kt)("h2",{id:"implementation-details"},"Implementation details"),(0,n.kt)("p",null,"As for how it is implemented as well as the design towards safety,\nplease refer to ",(0,n.kt)("a",{parentName:"p",href:"../../contributing/submodules/rust-opaque"},"this doc")))}c.isMDXComponent=!0}}]);