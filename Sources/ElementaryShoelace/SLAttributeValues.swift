import Elementary

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
        public static var slChange: Self { .init(rawValue: "sl-change") }
        public static var slClear: Self { .init(rawValue: "sl-clear") }
        public static var slInput: Self { .init(rawValue: "sl-input") }
        public static var slFocus: Self { .init(rawValue: "sl-focus") }
        public static var slBlur: Self { .init(rawValue: "sl-blur") }
        public static var slInvalid: Self { .init(rawValue: "sl-invalid") }
        public static var slSlideChange: Self { .init(rawValue: "sl-slide-change") }
        public static var slCopy: Self { .init(rawValue: "sl-copy") }
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
