import Elementary

public extension HTMLTag {
    enum SLAnimatedImage: HTMLTrait.Shoelace {
        public static let name = "sl-animated-image"
    }
}

public typealias SLAnimatedImage<Content: HTML> = HTMLElement<HTMLTag.SLAnimatedImage, Content>

// Should contain all the attributes defined on Shoelace's SLAnimatedImage component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/animated-image
extension HTMLTag.SLAnimatedImage: HTMLTrait.Attributes.src {}
extension HTMLTag.SLAnimatedImage: HTMLTrait.Attributes.alt {}
extension HTMLTag.SLAnimatedImage: HTMLTrait.Attributes.shoelace.play {}