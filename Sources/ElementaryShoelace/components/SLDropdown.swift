import Elementary

public extension HTMLTag {
    enum SLDropdown: HTMLTrait.Shoelace {
        public static let name = "sl-dropdown"
    }
}

public typealias SLDropdown<Content: HTML> = HTMLElement<HTMLTag.SLDropdown, Content>

// Should contain all the attributes defined on Shoelace's SLDropdown component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/dropdown
public extension HTMLAttribute where Tag == HTMLTag.SLDropdown {
    enum SLDropdownPlacementValue: String {
        case top
        case topStart = "top-start"
        case topEnd = "top-end"
        case bottom
        case bottomStart = "bottom-start"
        case bottomEnd = "bottom-end"
        case right
        case rightStart = "right-start"
        case rightEnd = "right-end"
        case left
        case leftStart = "left-start"
        case leftEnd = "left-end"
    }

    /// The preferred placement of the dropdown panel. Note that the actual placement may vary as needed to keep the panel inside of the viewport. Default `bottom-start`.
    /// - Parameter placement: The placement of the dropdown pannel. See ``SLDropdownPlacementValue`` for possible values.
    /// - Returns: The HTMLAttribute (`placement="(value)"`)
    static func placement(_ placement: SLDropdownPlacementValue) -> Self {
        HTMLAttribute(name: "placement", value: placement.rawValue)
    }

    /// By default, the dropdown is closed when an item is selected. This attribute will keep it open instead. Useful for dropdowns that allow for multiple interactions.
    /// - Returns: The HTMLAttribute (`stay-open-on-select`)
    static var stayOpenOnSelect: Self {
        HTMLAttribute(name: "stay-open-on-select", value: nil)
    }

    /// The dropdown will close when the user interacts outside of this element (e.g. clicking). Useful for composing other components that use a dropdown internally.
    /// - Parameter id: The id of the element that will contain the dropdown. (HTMLElement, undefined)
    /// - Returns: The HTMLAttribute (`containing-element="(value)"`)
    //: TODO: check if this is possible
    // static func containingElement(_ htmlElement: some HTML) -> Self {
    //     HTMLAttribute(name: "containing-element", value: htmlElement.render())
    // }

    /// The distance in pixels from which to offset the panel away from its trigger.
    /// - Parameter distance: The distance in pixels.
    /// - Returns: The HTMLAttribute (`distance="(value)"`)
    static func distance(_ distance: Int) -> Self {
        HTMLAttribute(name: "distance", value: String(distance))
    }

    /// The distance in pixels from which to offset the panel along its trigger.
    /// - Parameter skidding: The distance in pixels.
    /// - Returns: The HTMLAttribute (`skidding="(value)"`)
    static func skidding(_ skidding: Int) -> Self {
        HTMLAttribute(name: "skidding", value: String(skidding))
    }

    enum SLDropdownSyncValue: String {
        case width
        case height
        case both
    }

    /// Syncs the popup width or height to that of the trigger element.
    /// - Parameter sync: The sync value (`width`, `height`, `both`).
    /// - Returns: The HTMLAttribute (`sync="(value)"`)
    static func sync(_ sync: SLDropdownSyncValue) -> Self {
        HTMLAttribute(name: "sync", value: sync.rawValue)
    }
}

extension HTMLTag.SLDropdown: HTMLTrait.Attributes.shoelace.open {}
extension HTMLTag.SLDropdown: HTMLTrait.Attributes.disabled {}
extension HTMLTag.SLDropdown: HTMLTrait.Attributes.shoelace.hoist {}