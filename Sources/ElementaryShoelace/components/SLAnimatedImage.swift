import Elementary

public extension HTMLTag {
    enum SLAnimatedImage: HTMLTrait.Shoelace {
        public static let name = "sl-animated-image"
    }
}

public typealias SLAnimatedImage<Content: HTML> = HTMLElement<HTMLTag.SLAnimatedImage, Content>

// Should contain all the attributes defined on shoelaces SLInput component
// - that can be rendered on the server side and are not only getters
extension HTMLTag.SLAnimatedImage: HTMLTrait.Attributes.src {}
extension HTMLTag.SLAnimatedImage: HTMLTrait.Attributes.alt {}
extension HTMLTag.SLAnimatedImage: HTMLTrait.Attributes.shoelace.play {}