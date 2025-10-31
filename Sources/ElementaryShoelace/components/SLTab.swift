import Elementary

public extension HTMLTag {
    enum SLTab: HTMLTrait.Shoelace {
        public static let name = "sl-tab"
    }
}

public typealias SLTab<Content: HTML> = HTMLElement<HTMLTag.SLTab, Content>

// Should contain all the attributes defined on Shoelace's SLTab component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/tab
public extension HTMLAttribute where Tag == HTMLTag.SLTab {
    /// The name of the tab panel this tab is associated with. The panel must be located in the same tab group.
    /// - Parameter value: The name of the tab panel.
    /// - Returns: The HTML attribute for the tab panel name.
    static func panel(_ value: String) -> Self {
        HTMLAttribute(name: "panel", value: value)
    }

    /// Draws the tab in an active state. Defaults to `false`.
    static var active: Self {
        HTMLAttribute(name: "active", value: nil)
    }

    /// Makes the tab closable and shows a close button. Defaults to `false`.
    static var closable: Self {
        HTMLAttribute(name: "closable", value: nil)
    }
}

extension HTMLTag.SLTab: HTMLTrait.Attributes.disabled {}