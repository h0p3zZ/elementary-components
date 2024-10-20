import Elementary

public extension HTMLTag {
    enum SLAnimatedImage: HTMLTrait.Paired {
        public static let name = "sl-animated-image"
    }
}

public typealias SLAnimatedImage<Content: HTML> = HTMLElement<HTMLTag.SLAnimatedImage, Content>

// Should contain all the attributes defined on shoelaces SLInput component
// - that can be rendered on the server side and are not only getters
extension HTMLTag.SLAnimatedImage: HTMLTrait.Attributes.src {}
extension HTMLTag.SLAnimatedImage: HTMLTrait.Attributes.alt {}
extension HTMLTag.SLAnimatedImage: HTMLTrait.Attributes.shoelace.play {}


// Events
public extension HTMLAttributeValue.ShoelaceEvent {
     struct AnimatedImage: HTMLEventName, slLoad, slError {
        public var rawValue: String
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}

public extension HTMLAttribute where Tag == HTMLTag.SLAnimatedImage {
    static func on(_ event: HTMLAttributeValue.ShoelaceEvent.AnimatedImage, _ script: String) -> HTMLAttribute { .init(on: event, script: script) }
}