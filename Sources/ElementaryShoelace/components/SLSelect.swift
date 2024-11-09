import Elementary

public extension HTMLTag {
    enum SLSelect: HTMLTrait.Shoelace {
        public static let name = "sl-select"
    }
}

public typealias SLSelect<Content: HTML> = HTMLElement<HTMLTag.SLSelect, Content>

// Should contain all the attributes defined on Shoelace's SLSelect component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/select
public extension HTMLAttribute where Tag == HTMLTag.SLSelect {
    /// Allows multiple selected options
    static var multiple: Self {
        HTMLAttribute(name: "multiple", value: nil)
    }

    /// The maximum number of selected options to show when `multiple` is true. After the maximum, ”+n” will be shown to indicate the number of additional items that are selected. Set to 0 to remove the limit. Default '3'.
    /// - Parameter count: The maximum number of selected options to show when `multiple` is true.
    /// - Returns: The HTMLAttribute (`max-options-visible="(value)"`)
    static func maxOptionsVisible(_ count: Int) -> Self {
        HTMLAttribute(name: "max-options-visible", value: String(count))
    }

    enum SLSelectPlacementValue: String {
        case bottom
        case top
    }

    /// The preferred placement of the select’s menu. Note that the actual placement may vary as needed to keep the listbox inside of the viewport. Default `bottom`.
    /// - Parameter value: The preferred placement of the select’s menu (`bottom`, `top`).
    /// - Returns: The HTMLAttribute (`placement="(value)"`)
    static func placement(_ value: SLSelectPlacementValue) -> Self {
        HTMLAttribute(name: "placement", value: value.rawValue)
    }
}

extension HTMLTag.SLSelect: HTMLTrait.Attributes.name {}
extension HTMLTag.SLSelect: HTMLTrait.Attributes.value {}
extension HTMLTag.SLSelect: HTMLTrait.Attributes.shoelace.defaultValue {}
extension HTMLTag.SLSelect: HTMLTrait.Attributes.shoelace.size {}
extension HTMLTag.SLSelect: HTMLTrait.Attributes.placeholder {}
extension HTMLTag.SLSelect: HTMLTrait.Attributes.disabled {}
extension HTMLTag.SLSelect: HTMLTrait.Attributes.shoelace.clearable {}
extension HTMLTag.SLSelect: HTMLTrait.Attributes.shoelace.open {}
extension HTMLTag.SLSelect: HTMLTrait.Attributes.shoelace.hoist {}
extension HTMLTag.SLSelect: HTMLTrait.Attributes.shoelace.filled {}
extension HTMLTag.SLSelect: HTMLTrait.Attributes.shoelace.pill {}
extension HTMLTag.SLSelect: HTMLTrait.Attributes.label {}
extension HTMLTag.SLSelect: HTMLTrait.Attributes.shoelace.helpText {}
extension HTMLTag.SLSelect: HTMLTrait.Attributes.form {}
extension HTMLTag.SLSelect: HTMLTrait.Attributes.required {}
// TODO: getTag is a function - should this be implemented?