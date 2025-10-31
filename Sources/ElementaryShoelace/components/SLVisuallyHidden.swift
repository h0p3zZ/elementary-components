import Elementary

public extension HTMLTag {
    enum SLVisuallyHidden: HTMLTrait.Shoelace {
        public static let name = "sl-visually-hidden"
    }
}

public typealias SLVisuallyHidden<Content: HTML> = HTMLElement<HTMLTag.SLVisuallyHidden, Content>

// Should contain all the attributes defined on Shoelace's SLVisuallyHidden component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/visually-hidden
public extension HTMLAttribute where Tag == HTMLTag.SLVisuallyHidden { }