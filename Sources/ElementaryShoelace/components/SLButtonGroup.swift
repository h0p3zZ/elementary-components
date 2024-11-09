import Elementary

public extension HTMLTag {
    enum SlButtonGroup: HTMLTrait.Shoelace {
        public static let name = "sl-button-group"
    }
}

public typealias SlButtonGroup<Content: HTML> = HTMLElement<HTMLTag.SlButtonGroup, Content>

// Should contain all the attributes defined on Shoelace's SlButtonGroup component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/button-group
extension HTMLTag.SlButtonGroup: HTMLTrait.Attributes.label {}