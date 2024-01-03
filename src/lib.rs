use rutie::{
    methods, module, AnyException, AnyObject, Module, NilClass, Object,
    RString, VM,
};
use whichlang::{detect_language, Lang};

module!(Whichlang);

methods!(
    Whichlang,
    _rtself,

    fn wl_detect_language(text: RString) -> AnyObject {

        let lang = detect_language(rstring(text).to_str());
        return RString::new_utf8(lang.three_letter_code()).into();
    }

    );

fn rstring(rstring: Result<RString, AnyException>) -> RString {
    rstring.map_err(VM::raise_ex).unwrap()
}

#[allow(non_snake_case)]
#[no_mangle]
pub extern "C" fn Init_whichlang() {
    Module::new("Whichlang").define(|itself| {
        itself.def_self("detect_language", wl_detect_language);
    });
}
