import Elementary
import Foundation

public extension HTMLTag {
    enum SLInput: HTMLTrait.Shoelace {
        public static let name = "sl-input"
    }
}

public typealias SLInput<Content: HTML> = HTMLElement<HTMLTag.SLInput, Content>

// Should contain all the attributes defined on Shoelace's SLInput component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/input
public extension HTMLAttribute where Tag == HTMLTag.SLInput {
    enum SLInputType: String {
        case date
        case dateLocal = "date-local"
        case email
        case number
        case password
        case search
        case tel
        case text
        case time
        case url
    }

    /// 	The type of input. Works the same as a native <input> element, but only a subset of types are supported. Defaults `text`.
    /// - Parameter type: Input type. See ``SLInputType`` for possible values.
    /// - Returns: The HTMLAttribute (`type="(value)"`)
    static func type(_ type: SLInputType) -> Self {
        HTMLAttribute(name: "type", value: type.rawValue)
    }

    /// Adds a button to toggle the password’s visibility. Only applies to password types.
    /// - Returns: The HTMLAttribute (`password-toggle`)
    static var pssswordToggle: Self {
        HTMLAttribute(name: "password-toggle", value: nil)
    }

    /// Determines whether or not the password is currently visible. Only applies to password input types.
    /// - Returns: The HTMLAttribute (`password-visible`)
    static var passwordVisible: Self {
        HTMLAttribute(name: "password-visible", value: nil)
    }

    /// Hides the browser’s built-in increment/decrement spin buttons for number inputs.
    /// - Returns: The HTMLAttribute (`no-spin-buttons`)
    static var noSpinButtons: Self {
        HTMLAttribute(name: "no-spin-buttons", value: nil)
    }

    /* 
    *   enterkeyhint
    *   spellcheck
    *   inputmode
    *   are defined on HTMLTrait.Attributes.Global
    */

    /// Gets or sets the current value as a Date object. Returns `null` if the value can’t be converted. This will use the native `<input type="{{type}}">` implementation and may result in an error.
    /// - Parameter date: The date to set as the value.
    /// - Returns: The HTMLAttribute (`value="(value)"`)
    static func valueAsDate(_ date: Date) -> Self {
        HTMLAttribute(name: "value", value: "\(date)")
    }

    /// Gets or sets the current value as a number. Returns NaN if the value can’t be converted.
    /// - Parameter number: The number to set as the value.
    /// - Returns: The HTMLAttribute (`value="(value)"`)
    static func valueAsNumber(_ number: any Numeric) -> Self {
        HTMLAttribute(name: "value", value: "\(number)")
    }
}

extension HTMLTag.SLInput: HTMLTrait.Attributes.name {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.value {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.shoelace.defaultValue {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.shoelace.size {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.shoelace.filled {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.shoelace.pill {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.label {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.shoelace.helpText {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.shoelace.clearable {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.disabled {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.readonly {}
extension HTMLTag.SLInput: HTMLTrait.Attributes.form {}
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
// The rest of the traits defined in the component are global