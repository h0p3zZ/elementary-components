import Elementary

public extension HTMLTag {
    enum SLAlert: HTMLTrait.Paired {
        public static let name = "sl-alert"
    }
}

public typealias SLAlert<Content: HTML> = HTMLElement<HTMLTag.SLAlert, Content>

// Should contain all the attributes defined on shoelaces SLInput component
// - that can be rendered on the server side and are not only getters
public extension HTMLAttribute where Tag == HTMLTag.SLAlert {
    static var open: Self {
        HTMLAttribute(name: "open", value: nil)
    }

    static var closable: Self {
        HTMLAttribute(name: "closable", value: nil)
    }

    enum AlertVariant: String {
        case primary
        case success
        case neutral
        case warning
        case danger
    }

    static func variant(_ variant: AlertVariant) -> Self {
        HTMLAttribute(name: "variant", value: variant.rawValue)
    }

    static func duration(_ duration: Int) -> Self {
        HTMLAttribute(name: "duration", value: String(duration))
    }

    enum AlertCountdownValue: String {
        case rtl
        case ltr
        case none
    }
}

// Events
public extension HTMLAttributeValue.ShoelaceEvent {
     struct Alert: HTMLEventName, slShow, slAfterShow, slHide, slAfterHide {
        public var rawValue: String
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}

public extension HTMLAttribute where Tag == HTMLTag.SLAlert {
    static func on(_ event: HTMLAttributeValue.ShoelaceEvent.Alert, _ script: String) -> HTMLAttribute { .init(on: event, script: script) }
}