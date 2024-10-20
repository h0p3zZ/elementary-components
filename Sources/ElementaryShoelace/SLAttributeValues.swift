import Elementary
import Foundation

// eventName is supposed to be kebap case and is automatically convertet to lower camel case
@freestanding(declaration, names: arbitrary)
public macro DefineEvent(eventName: String) = #externalMacro(module: "Macros", type: "DefineEvent")

public extension HTMLAttributeValue {
    enum ShoelaceEvent {
        #DefineEvent(eventName: "slShow")
        #DefineEvent(eventName: "slAfterShow")
        #DefineEvent(eventName: "slHide")
        #DefineEvent(eventName: "slAfterHide")
        #DefineEvent(eventName: "slLoad")
        #DefineEvent(eventName: "slError")
        #DefineEvent(eventName: "slCancel")
        #DefineEvent(eventName: "slFinish")
        #DefineEvent(eventName: "slStart")
    }
}

extension HTMLAttributeValue.ShoelaceEvent.slShow {
    public static var slShow: T { .init(rawValue: "sl-show")! }
}
extension HTMLAttributeValue.ShoelaceEvent.slHide {
    public static var slHide: T { .init(rawValue: "sl-hide")! }
}
extension HTMLAttributeValue.ShoelaceEvent.slAfterShow {
    public static var slAfterShow: T { .init(rawValue: "sl-after-show")! }
}
extension HTMLAttributeValue.ShoelaceEvent.slAfterHide {
    public static var slAfterHide: T { .init(rawValue: "sl-after-hide")! }
}
extension HTMLAttributeValue.ShoelaceEvent.slLoad {
    public static var slLoad: T { .init(rawValue: "sl-load")! }
}
extension HTMLAttributeValue.ShoelaceEvent.slError {
    public static var slError: T { .init(rawValue: "sl-error")! }
}
extension HTMLAttributeValue.ShoelaceEvent.slCancel {
    public static var slCancel: T { .init(rawValue: "sl-cancel")! }
}
extension HTMLAttributeValue.ShoelaceEvent.slFinish {
    public static var slFinish: T { .init(rawValue: "sl-finish")! }
}
extension HTMLAttributeValue.ShoelaceEvent.slStart {
    public static var slStart: T { .init(rawValue: "sl-start")! }
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
