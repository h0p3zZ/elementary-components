import Elementary

public extension HTMLTag {
    enum SLMenu: HTMLTrait.Shoelace {
        public static let name = "sl-menu"
    }
}

// Should contain all the attributes defined on Shoelace's SLMenu component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/menu
public typealias SLMenu<Content: HTML> = HTMLElement<HTMLTag.SLMenu, Content>