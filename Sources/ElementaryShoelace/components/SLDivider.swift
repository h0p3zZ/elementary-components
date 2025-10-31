import Elementary

public extension HTMLTag {
    enum SLDivider: HTMLTrait.Shoelace {
        public static let name = "sl-divider"
    }
}

public typealias SLDivider<Content: HTML> = HTMLElement<HTMLTag.SLDivider, Content>

// Should contain all the attributes defined on Shoelace's SLDivider component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/divider
public extension HTMLAttribute where Tag == HTMLTag.SLDivider {
    /// Draws the divider in a vertical orientation.
    /// - Returns: The HTMLAttribute (`vertical`)
    static var vertical: Self { 
        .init(name: "vertical", value: nil)
    }
}