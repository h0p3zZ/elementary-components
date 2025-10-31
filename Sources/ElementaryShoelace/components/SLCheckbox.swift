import Elementary

public extension HTMLTag {
    enum SLCheckbox: HTMLTrait.Shoelace {
        public static let name = "sl-checkbox"
    }
}

public typealias SLCheckbox<Content: HTML> = HTMLElement<HTMLTag.SLCheckbox, Content>

// Should contain all the attributes defined on Shoelace's SLCheckbox component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/checkbox
public extension HTMLAttribute where Tag == HTMLTag.SLCheckbox {
    /// Draws the checkbox in an indeterminate state. This is usually applied to checkboxes that represents a “select all/none” behavior when associated checkboxes have a mix of checked and unchecked states. Default `false`.
    /// - Returns: The HTMLAttribute (`indeterminate`)
    static var indeterminate: Self {
        HTMLAttribute(name: "indeterminate", value: nil)
    }

    /// Draws the checkbox in an indeterminate state. This is usually applied to checkboxes that represents a “select all/none” behavior when associated checkboxes have a mix of checked and unchecked states. Default `false`.
    /// - Returns: The HTMLAttribute (`indeterminate`)
    static var defaultChecked: Self {
        HTMLAttribute(name: "defaultChecked", value: nil)
    }
}

extension HTMLTag.SLCheckbox: HTMLTrait.Attributes.name {}
extension HTMLTag.SLCheckbox: HTMLTrait.Attributes.value {}
extension HTMLTag.SLCheckbox: HTMLTrait.Attributes.shoelace.size {}
extension HTMLTag.SLCheckbox: HTMLTrait.Attributes.disabled {}
extension HTMLTag.SLCheckbox: HTMLTrait.Attributes.shoelace.checked {}
extension HTMLTag.SLCheckbox: HTMLTrait.Attributes.form {}
extension HTMLTag.SLCheckbox: HTMLTrait.Attributes.required {}
extension HTMLTag.SLCheckbox: HTMLTrait.Attributes.shoelace.helpText {}