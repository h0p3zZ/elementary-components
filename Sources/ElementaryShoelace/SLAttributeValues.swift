import Elementary

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.Global {
    static func on(_ event: HTMLAttributeValue.ShoelaceEvent, _ script: String) -> Self { .init(on: event, script: script) }
}

// TODO: window events, drag events, media events (more scoped)

public extension HTMLAttributeValue {
    struct ShoelaceEvent: HTMLEventName {
        public var rawValue: String
        public init(rawValue: String) {
            self.rawValue = rawValue
        }

        public static var slShow: Self { .init(rawValue: "sl-show") }
        public static var slAfterShow: Self { .init(rawValue: "sl-after-show") }
        public static var slHide: Self { .init(rawValue: "sl-hide") }
        public static var slAfterHide: Self { .init(rawValue: "sl-after-hide") }
        public static var slLoad: Self { .init(rawValue: "sl-load") }
        public static var slError: Self { .init(rawValue: "sl-erorr") }
        public static var slCancel: Self { .init(rawValue: "sl-cancel") }
        public static var slFinish: Self { .init(rawValue: "sl-finish") }
        public static var slStart: Self { .init(rawValue: "sl-start") }
    }
}



// TODO: this should be public in Elementary
protocol HTMLEventName: RawRepresentable {}

extension HTMLAttribute {
    init(on eventName: some HTMLEventName, script: String) {
        self.init(name: "on\(eventName.rawValue)", value: script)
    }
}

public extension HTMLTrait.Attributes {
    protocol alt {}
}
extension HTMLAttribute where Tag: HTMLTrait.Attributes.alt {
    static func alt(_ alt: String) -> Self {
        .init(name: "alt", value: alt)
    }
}
