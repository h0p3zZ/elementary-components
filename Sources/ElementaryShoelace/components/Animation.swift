import Elementary

public extension HTMLTag {
    enum SLAnimation: HTMLTrait.Paired {
        public static let name = "sl-animation"
    }
}

public typealias SLAnimation<Content: HTML> = HTMLElement<HTMLTag.SLAnimation, Content>

// Should contain all the attributes defined on shoelaces SLInput component
// - that can be rendered on the server side and are not only getters
public extension HTMLAttribute where Tag == HTMLTag.SLAnimation {
}

extension HTMLTag.SLAnimation: HTMLTrait.Attributes.name {}
extension HTMLTag.SLAnimation: HTMLTrait.Attributes.shoelace.play {}

// Events
public extension HTMLAttributeValue.ShoelaceEvent {
     struct Animation: HTMLEventName {
        public var rawValue: String
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}

public extension HTMLAttribute where Tag == HTMLTag.SLAnimation {
    static func on(_ event: HTMLAttributeValue.ShoelaceEvent.Animation, _ script: String) -> HTMLAttribute { .init(on: event, script: script) }
}