import Elementary

public extension HTMLTag {
    enum SLSwitch: HTMLTrait.Shoelace {
        public static let name = "sl-switch"
    }
}

public typealias SLSwitch<Content: HTML> = HTMLElement<HTMLTag.SLSwitch, Content>

// Should contain all the attributes defined on Shoelace's SLSwitch component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/switch
public extension HTMLAttribute where Tag == HTMLTag.SLSwitch {
    /// The default value of the form control. Primarily used for resetting the form control. (Default `false`)
    static var defaultChecked : Self {
        HTMLAttribute(name: "default-checked", value: nil)
    }
}

extension HTMLTag.SLSwitch: HTMLTrait.Attributes.name {}
extension HTMLTag.SLSwitch: HTMLTrait.Attributes.value {}
extension HTMLTag.SLSwitch: HTMLTrait.Attributes.shoelace.size {}
extension HTMLTag.SLSwitch: HTMLTrait.Attributes.disabled {}
extension HTMLTag.SLSwitch: HTMLTrait.Attributes.shoelace.checked {}
extension HTMLTag.SLSwitch: HTMLTrait.Attributes.form {}
extension HTMLTag.SLSwitch: HTMLTrait.Attributes.required {}
extension HTMLTag.SLSwitch: HTMLTrait.Attributes.shoelace.helpText {}