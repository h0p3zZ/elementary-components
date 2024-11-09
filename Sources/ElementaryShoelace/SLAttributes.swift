import Elementary

public extension HTMLTrait {
    protocol Shoelace: Paired { }
}

public extension HTMLAttribute where Tag: HTMLTrait.Shoelace {
    static func slot(_ slot: String) -> Self {
        HTMLAttribute(name: "slot", value: slot)
    }

    static func `class`(part: String, _ tailwind: String) -> Self {
        let tailwind = tailwind.split(separator: " ").map { s in
            "[&::part(\(part))]:\(s)"
        }.joined(separator: " ")
        return HTMLAttribute(name: "tailwind", value: tailwind, mergedBy: .appending(seperatedBy: " "))
    }
}

public extension HTMLTrait.Attributes {
    enum shoelace {}
}

public extension HTMLTrait.Attributes.shoelace {
    protocol size {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.shoelace.size {
    enum Size: String {
        case small
        case medium
        case large
    }

    /// Sets the size of the shoelace component. Default `medium`.
    /// - Parameter size: The size of the component (`small`, `medium`, `large`).
    /// - Returns: The HTMLAttribute (`size="(value)"`)
    static func size(_ size: Size) -> Self {
        HTMLAttribute(name: "size", value: size.rawValue)
    }
}

public extension HTMLTrait.Attributes.shoelace {
    protocol clearable {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.shoelace.clearable {
    /// Adds a clear button that appears when the element is not empty. Default `false`.
    /// - Returns: The HTMLAttribute (`clearable`)
    static var clearable: Self {
        HTMLAttribute(name: "clearable", value: nil)
    }
}

public extension HTMLTrait.Attributes.shoelace {
    protocol open {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.shoelace.open {
    /// Indicates whether or not the element is open.  Default `false`.
    /// - Returns: The HTMLAttribute (`open`)
    static var open: Self {
        HTMLAttribute(name: "open", value: nil)
    }
}

public extension HTMLTrait.Attributes.shoelace {
    protocol filled {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.shoelace.filled {
    /// Makes the component appear disabled. Default `false`.
    static var filled: Self {
        HTMLAttribute(name: "filled", value: nil)
    }
}

public extension HTMLTrait.Attributes.shoelace {
    protocol helpText {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.shoelace.helpText {
    /// Sets the help text of the component. Default `''`.
    /// - Parameter text: The text of the help text.
    /// - Returns: The HTMLAttribute (`help-text="(text)"`)
    static func helpText(_ text: String) -> Self {
        HTMLAttribute(name: "help-text", value: text)
    }
}

public extension HTMLTrait.Attributes.shoelace {
    protocol pill {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.shoelace.pill {
    /// Makes the component pill style. Default `false`.
    static var pill: Self {
        HTMLAttribute(name: "pilled", value: nil)
    }
}

public extension HTMLTrait.Attributes.shoelace {
    protocol defaultValue {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.shoelace.defaultValue {
    /// Sets the default value of the component. Primarily used for resetting the form control. Default `''`.
    /// - Parameter value: The default value of the component
    /// - Returns: The HTMLAttribute (`defaultValue="(value)"`)
    static func defaultValue(_ value: String) -> Self {
        HTMLAttribute(name: "defaultValue", value: value)
    }
}

public extension HTMLTrait.Attributes.shoelace {
    protocol play {}
}

// TODO: check if the description is correct (whether all components that implement it are animations)
public extension HTMLAttribute where Tag: HTMLTrait.Attributes.shoelace.play {
    /// Plays the animation. When omitted, the animation will be paused. This attribute will be automatically removed when the animation finishes or gets canceled. Default `false`.
    /// - Parameter play: Whether the animation should play
    /// - Returns: The HTMLAttribute
    static func play(_ play: Bool) -> Self {
        .init(name: "play", value: String(play))
    }
}

// TODO: upstream to Elementary
extension HTMLTrait.Attributes {
    protocol value {}
}

extension HTMLAttribute where Tag: HTMLTrait.Attributes.value {
    static func value(_ value: String) -> Self {
        HTMLAttribute(name: "value", value: value)
    }
}

extension HTMLTrait.Attributes {
    protocol readonly {}
}

extension HTMLAttribute where Tag: HTMLTrait.Attributes.value {
    static func readonly() -> Self {
        HTMLAttribute(name: "readonly", value: nil)
    }
}

extension HTMLTag.input: HTMLTrait.Attributes.readonly {}

extension HTMLTrait.Attributes {
    protocol pattern {}
}

extension HTMLAttribute where Tag: HTMLTrait.Attributes.pattern {
    static func pattern(_ pattern: String) -> Self {
        HTMLAttribute(name: "pattern", value: pattern)
    }
}

extension HTMLTag.input: HTMLTrait.Attributes.pattern {}

extension HTMLTrait.Attributes {
    protocol minlength {}
}

extension HTMLAttribute where Tag: HTMLTrait.Attributes.minlength {
    static func minlength(_ length: Int) -> Self {
        HTMLAttribute(name: "minlength", value: String(length))
    }
}

extension HTMLTag.input: HTMLTrait.Attributes.minlength {}

extension HTMLTrait.Attributes {
    protocol maxlength {}
}

extension HTMLAttribute where Tag: HTMLTrait.Attributes.maxlength {
    static func maxlength(_ length: Int) -> Self {
        HTMLAttribute(name: "maxlength", value: String(length))
    }
}

extension HTMLTag.input: HTMLTrait.Attributes.maxlength {}

extension HTMLTrait.Attributes {
    protocol min {}
}

extension HTMLAttribute where Tag: HTMLTrait.Attributes.min {
    static func min(_ minVal: Int) -> Self {
        HTMLAttribute(name: "min", value: String(minVal))
    }

    static func min(_ dateString: String) -> Self {
        HTMLAttribute(name: "min", value: dateString)
    }
}

extension HTMLTag.input: HTMLTrait.Attributes.min {}

extension HTMLTrait.Attributes {
    protocol max {}
}

extension HTMLAttribute where Tag: HTMLTrait.Attributes.max {
    static func max(_ maxVal: Int) -> Self {
        HTMLAttribute(name: "max", value: String(maxVal))
    }

    static func min(_ dateString: String) -> Self {
        HTMLAttribute(name: "max", value: dateString)
    }
}

extension HTMLTag.input: HTMLTrait.Attributes.max {}

extension HTMLTrait.Attributes {
    protocol step {}
}

extension HTMLAttribute where Tag: HTMLTrait.Attributes.step {
    static func step(_ step: Int) -> Self {
        HTMLAttribute(name: "min", value: String(step))
    }
}

extension HTMLTag.input: HTMLTrait.Attributes.step {}

extension HTMLTrait.Attributes {
    protocol autocapitalize {}
}

extension HTMLAttribute where Tag: HTMLTrait.Attributes.autocapitalize {
    enum AutocapitalizeValue: String {
        case off
        case none
        case on
        case sentences
        case words
        case characters
    }

    static func autocapitalize(_ value: AutocapitalizeValue) -> Self {
        HTMLAttribute(name: "autocapitalize", value: value.rawValue)
    }
}

extension HTMLTag.input: HTMLTrait.Attributes.autocapitalize {}
extension HTMLTag.textarea: HTMLTrait.Attributes.autocapitalize {}

extension HTMLTrait.Attributes {
    protocol autocorrect {}
}

extension HTMLAttribute where Tag: HTMLTrait.Attributes.autocorrect {
    enum AutocorrectValue: String {
        case off
        case on
    }

    static func autocorrect(_ value: AutocorrectValue) -> Self {
        HTMLAttribute(name: "autocorrect", value: value.rawValue)
    }
}

extension HTMLAttribute where Tag: HTMLTrait.Attributes.Global {
    static func enterkeyhint(_ value: String) -> Self {
        HTMLAttribute(name: "enterkeyhint", value: value)
    }
}

extension HTMLAttribute where Tag: HTMLTrait.Attributes.Global {
    static func spellcheck(_ value: Bool) -> Self {
        HTMLAttribute(name: "spellcheck", value: String(value))
    }
}

extension HTMLAttribute where Tag: HTMLTrait.Attributes.Global {
    enum InputModeValue: String {
        case none
        case text
        case tel
        case url
        case email
        case numeric
        case decimal
        case search
    }

    static func inputmode(_ value: InputModeValue) -> Self {
        HTMLAttribute(name: "inputmode", value: value.rawValue)
    }
}
