import Elementary

public extension HTMLTag {
    enum SLRange: HTMLTrait.Shoelace {
        public static let name = "sl-range"
    }
}

public typealias SLRange<Content: HTML> = HTMLElement<HTMLTag.SLRange, Content>

// Should contain all the attributes defined on Shoelace's SLRange component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/select
public extension HTMLAttribute where Tag == HTMLTag.SLRange {
    /// The current value of the range, submitted as a name/value pair with form data. Default '0'.
    /// - Parameter number: The current value of the range.
    /// - Returns: The HTMLAttribute (`value="(number)"`)
    static func value(_ number: Int) -> Self {
        HTMLAttribute(name: "value", value: String(number))
    }

    enum SLRangeTooltipValue: String {
        case top
        case bottom
        case none
    }

    /// The preferred placement of the range’s tooltip. Default `top`.
    /// - Parameter value: The preferred placement of the range’s tooltip (`top`, `bottom`, `none`).
    /// - Returns: The HTMLAttribute (`tooltip="(value)"`)
    static func tooltip(_ value: SLRangeTooltipValue) -> Self {
        HTMLAttribute(name: "tooltip", value: value.rawValue)
    }


}

extension HTMLTag.SLRange: HTMLTrait.Attributes.name {}
extension HTMLTag.SLRange: HTMLTrait.Attributes.label {}
extension HTMLTag.SLRange: HTMLTrait.Attributes.shoelace.helpText {}
extension HTMLTag.SLRange: HTMLTrait.Attributes.disabled {}
extension HTMLTag.SLRange: HTMLTrait.Attributes.min {}
extension HTMLTag.SLRange: HTMLTrait.Attributes.max {}
extension HTMLTag.SLRange: HTMLTrait.Attributes.step {}
extension HTMLTag.SLRange: HTMLTrait.Attributes.form {}
extension HTMLTag.SLRange: HTMLTrait.Attributes.shoelace.defaultValue {}