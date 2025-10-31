import Elementary

public extension HTMLTag {
    enum SLResizeObserver: HTMLTrait.Shoelace {
        public static let name = "sl-resize-observer"
    }
}

public typealias SLResizeObserver<Content: HTML> = HTMLElement<HTMLTag.SLResizeObserver, Content>

// Should contain all the attributes defined on Shoelace's SLResizeObserver component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/resize-observer
extension HTMLTag.SLResizeObserver: HTMLTrait.Attributes.disabled {}