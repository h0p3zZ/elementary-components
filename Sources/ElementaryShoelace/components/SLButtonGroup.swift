import Elementary

public extension HTMLTag {
    enum SlButtonGroup: HTMLTrait.Shoelace {
        public static let name = "sl-button-group"
    }
}

public typealias SlButtonGroup<Content: HTML> = HTMLElement<HTMLTag.SlButtonGroup, Content>

// Should contain all the attributes defined on shoelaces SlButtonGroup component
// - that can be rendered on the server side and are not only getters
extension HTMLTag.SlButtonGroup: HTMLTrait.Attributes.label {}