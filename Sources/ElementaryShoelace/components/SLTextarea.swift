import Elementary

public extension HTMLTag {
    enum SLTextarea: HTMLTrait.Shoelace {
        public static let name = "sl-textarea"
    }
}

public typealias SLTextarea<Content: HTML> = HTMLElement<HTMLTag.SLTextarea, Content>

// Should contain all the attributes defined on Shoelace's SLTextarea component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/textarea
public extension HTMLAttribute where Tag == HTMLTag.SLTextarea { }

 /* 
    *   enterkeyhint
    *   spellcheck
    *   inputmode
    *   are defined on HTMLTrait.Attributes.Global
    */
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.name {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.value {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.shoelace.size {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.shoelace.filled {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.label {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.shoelace.helpText {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.placeholder {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.disabled {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.readonly {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.form {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.required {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.minlength {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.maxlength {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.autocapitalize {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.autocorrect {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.autocomplete {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.autofocus {}
extension HTMLTag.SLTextarea: HTMLTrait.Attributes.shoelace.defaultValue {}