import Elementary

public extension HTMLTag {
    enum SLMenuLabel: HTMLTrait.Shoelace {
        public static let name = "sl-menu-label"
    }
}

// Should contain all the attributes defined on Shoelace's SLMenuLabel component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/menu-label
public typealias SLMenuLabel<Content: HTML> = HTMLElement<HTMLTag.SLMenuLabel, Content>
