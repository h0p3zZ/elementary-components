import Elementary

public extension HTMLTag {
    enum SLTabGroup: HTMLTrait.Shoelace {
        public static let name = "sl-tab-group"
    }
}

public typealias SLTabGroup<Content: HTML> = HTMLElement<HTMLTag.SLTabGroup, Content>

// Should contain all the attributes defined on Shoelace's SLTabGroup component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/tab-group
public extension HTMLAttribute where Tag == HTMLTag.SLTabGroup {
    enum SLTabGroupPlacementValue: String {
        case top
        case bottom
        case start
        case end
    }

    /// The placement of the tabs. Defaults to `top`.
    /// - Parameter value: The placement value. Options: (`top`, `bottom`, `start`, `end`).
    /// - Returns: The HTMLAttribute (`placement="(value)"`)
    static func placement(_ value: SLTabGroupPlacementValue) -> Self {
        HTMLAttribute(name: "placement", value: value.rawValue)
    }

    enum SLTabGroupActivationValue: String {
        case auto
        case manual
    }

    /// When set to auto, navigating tabs with the arrow keys will instantly show the corresponding tab panel. When set to manual, the tab will receive focus but will not show until the user presses spacebar or enter. Defaults to `auto`.
    /// - Parameter value: The activation value. Options: (`auto`, `manual`).
    /// - Returns: The HTMLAttribute (`activation="(value)"`)
    static func activation(_ value: SLTabGroupActivationValue) -> Self {
        HTMLAttribute(name: "activation", value: value.rawValue)
    }

    /// Disables the scroll arrows that appear when tabs overflow.
    static var noScrollControls: Self {
        HTMLAttribute(name: "no-scroll-controls", value: nil)
    }

    /// Prevent scroll buttons from being hidden when inactive.	
    static var fixedScrollControls: Self {
        HTMLAttribute(name: "fixed-scroll-controls", value: nil)
    }
}
