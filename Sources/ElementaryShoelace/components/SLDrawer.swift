import Elementary

public extension HTMLTag {
    enum SLDrawer: HTMLTrait.Shoelace {
        public static let name = "sl-drawer"
    }
}

public typealias SLDrawer<Content: HTML> = HTMLElement<HTMLTag.SLDrawer, Content>

// Should contain all the attributes defined on Shoelace's SLDrawer component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/drawer
public extension HTMLAttribute where Tag == HTMLTag.SLDrawer {
    /// The drawer’s label as displayed in the header. You should always include a relevant label even when using no-header, as it is required for proper accessibility. If you need to display HTML, use the label slot instead. Default ``.
    /// - Parameter label: The label of the drawer.
    /// - Returns: The HTMLAttribute (`label="(value)"`)
    static func label(_ label: String) -> Self {
        HTMLAttribute(name: "label", value: label)
    }

    enum SLDrawerPlacementValue: String {
        case top
        case right
        case bottom
        case left
    }

    /// The direction from which the drawer will open. Default `end`.
    /// - Parameter placement: The placement of the drawer (`top`, `right`, `bottom`, `left`).
    /// - Returns: The HTMLAttribute (`placement="(value)"`)
    static func placement(_ placement: SLDrawerPlacementValue) -> Self {
        HTMLAttribute(name: "placement", value: placement.rawValue)
    }

    /// By default, the drawer slides out of its containing block (usually the viewport). To make the drawer slide out of its parent element, set this attribute and add position: relative to the parent.
    /// - Returns: The HTMLAttribute (`contained`)
    static var contained: Self {
        HTMLAttribute(name: "contained", value: nil)
    }
}

extension HTMLTag.SLDrawer: HTMLTrait.Attributes.shoelace.open {}
extension HTMLTag.SLDrawer: HTMLTrait.Attributes.shoelace.noHeader {}