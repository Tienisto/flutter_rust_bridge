"use strict";(self.webpackChunkflutter_rust_bridge=self.webpackChunkflutter_rust_bridge||[]).push([[2814],{3905:(e,t,r)=>{r.d(t,{Zo:()=>d,kt:()=>m});var n=r(7294);function i(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}function o(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function a(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?o(Object(r),!0).forEach((function(t){i(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):o(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function l(e,t){if(null==e)return{};var r,n,i=function(e,t){if(null==e)return{};var r,n,i={},o=Object.keys(e);for(n=0;n<o.length;n++)r=o[n],t.indexOf(r)>=0||(i[r]=e[r]);return i}(e,t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(n=0;n<o.length;n++)r=o[n],t.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(i[r]=e[r])}return i}var s=n.createContext({}),u=function(e){var t=n.useContext(s),r=t;return e&&(r="function"==typeof e?e(t):a(a({},t),e)),r},d=function(e){var t=u(e.components);return n.createElement(s.Provider,{value:t},e.children)},c={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},p=n.forwardRef((function(e,t){var r=e.components,i=e.mdxType,o=e.originalType,s=e.parentName,d=l(e,["components","mdxType","originalType","parentName"]),p=u(r),m=i,f=p["".concat(s,".").concat(m)]||p[m]||c[m]||o;return r?n.createElement(f,a(a({ref:t},d),{},{components:r})):n.createElement(f,a({ref:t},d))}));function m(e,t){var r=arguments,i=t&&t.mdxType;if("string"==typeof e||i){var o=r.length,a=new Array(o);a[0]=p;var l={};for(var s in t)hasOwnProperty.call(t,s)&&(l[s]=t[s]);l.originalType=e,l.mdxType="string"==typeof e?e:i,a[1]=l;for(var u=2;u<o;u++)a[u]=r[u];return n.createElement.apply(null,a)}return n.createElement.apply(null,r)}p.displayName="MDXCreateElement"},7884:(e,t,r)=>{r.r(t),r.d(t,{assets:()=>c,contentTitle:()=>u,default:()=>f,frontMatter:()=>s,metadata:()=>d,toc:()=>p});var n=r(7462),i=r(7294),o=r(3905);function a(){return i.createElement("div",{style:{position:"relative",marginBottom:"12px"}},i.createElement("div",{id:"flutter_host",style:{height:"500px",border:"1px solid #ccc"}}),i.createElement(l,null))}class l extends i.Component{constructor(){super(...arguments),this.state={loading:!0},this.componentDidMount=()=>{console.log("FrbExampleGallery.FlutterInitializer componentDidMount");const e=this;{console.log("FrbExampleGallery.FlutterInitializer add enable-threads.js script");const e=document.createElement("script");e.src="/flutter_rust_bridge/demo/enable-threads.js",document.body.appendChild(e)}{console.log("FrbExampleGallery.FlutterInitializer add flutter.js script");const e=document.createElement("script");e.src="/flutter_rust_bridge/demo/flutter.js",document.body.appendChild(e)}window.addEventListener("load",(function(t){console.log("FrbExampleGallery.FlutterInitializer call flutter-loadEntrypoint"),_flutter.loader.loadEntrypoint({onEntrypointLoaded:async function(t){console.log("FrbExampleGallery.FlutterInitializer call flutter-appRunner");let r=await t.initializeEngine({hostElement:document.querySelector("#flutter_host")});await r.runApp(),e.setState({loading:!1})}})}))}}render(){return this.state.loading?i.createElement("div",{style:{display:"flex",alignItems:"center",justifyContent:"center",position:"absolute",top:"0px",left:"0px",right:"0px",bottom:"0px"}},i.createElement("div",{style:{display:"flex",flexDirection:"row",alignItems:"center"}},i.createElement("span",null,"Loading..."),i.createElement("div",{style:{marginLeft:"8px",border:"1px solid #f3f3f3",borderTop:"1px solid #2196f3",borderRadius:"50%",width:"12px",height:"12px",animation:"my-simple-spin 1.2s linear infinite"}}))):i.createElement(i.Fragment,null)}}const s={},u="Demo",d={unversionedId:"demo",id:"demo",title:"Demo",description:"Some scenarios when using Rust and Dart include:",source:"@site/docs/demo.md",sourceDirName:".",slug:"/demo",permalink:"/flutter_rust_bridge/demo",draft:!1,editUrl:"https://github.com/fzyzcjy/flutter_rust_bridge/tree/master/website/docs/demo.md",tags:[],version:"current",frontMatter:{},sidebar:"tutorialSidebar",previous:{title:"Quickstart",permalink:"/flutter_rust_bridge/quickstart"},next:{title:"Guides",permalink:"/flutter_rust_bridge/guides/"}},c={},p=[{value:"Introduction",id:"introduction",level:2},{value:"Demo",id:"demo-1",level:2}],m={toc:p};function f(e){let{components:t,...r}=e;return(0,o.kt)("wrapper",(0,n.Z)({},m,r,{components:t,mdxType:"MDXLayout"}),(0,o.kt)("h1",{id:"demo"},"Demo"),(0,o.kt)("p",null,"Some scenarios when using Rust and Dart include:"),(0,o.kt)("ul",null,(0,o.kt)("li",{parentName:"ul"},(0,o.kt)("strong",{parentName:"li"},"Use arbitrary Rust libraries, in Dart"),":\nWhen there is a library only existing in Rust but not in Dart."),(0,o.kt)("li",{parentName:"ul"},(0,o.kt)("strong",{parentName:"li"},"High-performance code in Rust, others in Dart"),":\nRust makes it easy to write multi-thread code, algorithms, data-intensive operations, etc."),(0,o.kt)("li",{parentName:"ul"},(0,o.kt)("strong",{parentName:"li"},"Logic in Rust, UI in Dart"),":\nWhen you want a UI framework (Flutter) for your Rust system.")),(0,o.kt)("h2",{id:"introduction"},"Introduction"),(0,o.kt)("p",null,"We demonstrate a simple example here.\nIn this demo,\nlet us draw a ",(0,o.kt)("a",{parentName:"p",href:"https://en.wikipedia.org/wiki/Mandelbrot_set"},"Mandelbrot set"),'\n(a well-known infinite-resolution "image" generated by a simple math formula).\nThe image is plotted in Flutter UI, generated by Rust algorithm, and communicated via this library.\nTweak the number of threads to see how multi-thread Rust code speeds up :)'),(0,o.kt)("details",null,(0,o.kt)("summary",null,"What is a Mandelbrot Set"),(0,o.kt)("p",null,"The Mandelbrot set is the set of complex numbers ",(0,o.kt)("inlineCode",{parentName:"p"},"c"),"\nfor which the function ",(0,o.kt)("inlineCode",{parentName:"p"},"f_c(z)=z^{2}+c")," does not diverge to infinity when iterated from ",(0,o.kt)("inlineCode",{parentName:"p"},"z=0"),".\nImages of the Mandelbrot set exhibit an elaborate and infinitely complicated boundary\nthat reveals progressively ever-finer recursive detail at increasing magnifications."),(0,o.kt)("p",{align:"center"},(0,o.kt)("img",{src:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Mandelbrot_sequence_new.gif/220px-Mandelbrot_sequence_new.gif"})),(0,o.kt)("p",null,"Image credit: ",(0,o.kt)("a",{parentName:"p",href:"https://en.wikipedia.org/wiki/User:Simpsons_contributor"},"Simpsons contributor"))),(0,o.kt)("h2",{id:"demo-1"},"Demo"),(0,o.kt)(a,{mdxType:"FrbExampleGallery"}),(0,o.kt)("p",null,"All source code can be found in ",(0,o.kt)("inlineCode",{parentName:"p"},"frb_example/gallery."),"\nRemember to ignore all ",(0,o.kt)("inlineCode",{parentName:"p"},"ignore_me")," folders, which contain code unrelated to the purpose of the demos."),(0,o.kt)("small",null,"Remarks: The mandelbrot set was the only demo since 2021.10 in V1 version. The Rust code is deliberately not implemented the usual way, in order to ensure the computation speed is homogeneous for intuitive comparison."))}f.isMDXComponent=!0}}]);