import Elementary

public extension HTMLTag {
    enum SLIcon: HTMLTrait.Shoelace {
        public static let name = "sl-icon"
    }
}

public typealias SLIcon<Content: HTML> = HTMLElement<HTMLTag.SLIcon, Content>

// Should contain all the attributes defined on Shoelace's SLIcon component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/icon
extension HTMLTag.SLIcon: HTMLTrait.Attributes.shoelace.SLIconProtocol {}
extension HTMLTag.SLIcon: HTMLTrait.Attributes.label {}