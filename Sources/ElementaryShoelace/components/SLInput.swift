import Elementary
import Foundation

public extension HTMLTag {
    enum SLInput: HTMLTrait.Shoelace {
        public static let name = "sl-input"
    }
}

public typealias SLInput<Content: HTML> = HTMLElement<HTMLTag.SLInput, Content>

// Should contain all the attributes defined on shoelaces SLInput component
// - that can be rendered on the server side and are not only getters
public extension HTMLAttribute where Tag == HTMLTag.SLInput {
    static func label(_ summary: String) -> Self {
        HTMLAttribute(name: "label", value: summary)
    }

    static func helpText(_ text: String) -> Self {
        HTMLAttribute(name: "help-text", value: text)
    }

    static func placeholder(_ text: String) -> Self {
        HTMLAttribute(name: "placeholder", value: text)
    }

    static var clearable: Self {
        HTMLAttribute(name: "clearable", value: nil)
    }

    enum SLInputType: String {
        case email
        case number
        case date
    }

    static func type(_ type: SLInputType) -> Self {
        HTMLAttribute(name: "type", value: type.rawValue)
    }

    static var filled: Self {
        HTMLAttribute(name: "filled", value: nil)
    }

    static var pssswordToggle: Self {
        HTMLAttribute(name: "password-toggle", value: nil)
    }

    static var passwordVisible: Self {
        HTMLAttribute(name: "password-visible", value: nil)
    }

    static var noSpinButtons: Self {
        HTMLAttribute(name: "no-spin-buttons", value: nil)
    }

    static func valueAsDate(_ date: Date) -> Self {
        HTMLAttribute(name: "value", value: "\(date)")
    }

    static func valueAsNumber(_ number: any Numeric) -> Self {
        HTMLAttribute(name: "value", value: "\(number)")
    }
}

extension HTMLTag.SLInput: HTMLTrait.Attributes.disabled {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.name {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.value {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.label {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.readonly {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.required {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.pattern {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.minlength {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.maxlength {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.min {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.max {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.step {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.autocapitalize {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.autocorrect {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.autocomplete {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.autofocus {}

extension HTMLTag.SLInput: HTMLTrait.Attributes.shoelace.size {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.shoelace.pill {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.shoelace.form {}
