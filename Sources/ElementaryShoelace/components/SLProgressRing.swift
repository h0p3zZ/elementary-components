import Elementary

public extension HTMLTag {
    enum SLProgressRing: HTMLTrait.Shoelace {
        public static let name = "sl-progress-ring"
    }
}

public typealias SLProgressRing<Content: HTML> = HTMLElement<HTMLTag.SLProgressRing, Content>

// Should contain all the attributes defined on Shoelace's SLProgressRing component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/progress-ring
extension HTMLTag.SLProgressRing: HTMLTrait.Attributes.shoelace.progressValue {}
extension HTMLTag.SLProgressRing: HTMLTrait.Attributes.label {}