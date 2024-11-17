import Elementary
import Foundation

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
    protocol hoist {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.shoelace.hoist {
    /// Hoists the component to the body to avoid z-index issues. Default `false`.
    /// - Returns: The HTMLAttribute (`hoist`)
    static var hoist: Self {
        HTMLAttribute(name: "hoist", value: nil)
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

public extension HTMLTrait.Attributes.shoelace {
    protocol noHeader {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.shoelace.noHeader {
    /// Disables the header. This will also remove the default close button, so please ensure you provide an easy, accessible way for users to dismiss the component.
    /// - Returns: The HTMLAttribute (`no-header`)
    static var noHeader: Self {
        HTMLAttribute(name: "no-header", value: nil)
    }
}

public extension HTMLTrait.Attributes.shoelace {
    protocol download {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.shoelace.download {
    /// Tells the browser to download the linked file as this filename. Only used when href is present.
    /// - Parameter url: The URL to download.
    /// - Returns: The HTMLAttribute (`download="(url)"`)
    static func download(_ url: String) -> Self {
        HTMLAttribute(name: "download", value: url)
    }
}

public extension HTMLTrait.Attributes.shoelace {
    protocol checked {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.shoelace.checked {
    /// Draws the checkbox in a checked state. Default `false`.
    /// - Returns: The HTMLAttribute (`checked`)
    static var checked: Self {
        HTMLAttribute(name: "checked", value: nil)
    }
}

public extension HTMLTrait.Attributes.shoelace {
    protocol loading {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.shoelace.loading {
    /// Draws the component in a loading state. Default `false`.
    /// - Returns: The HTMLAttribute (`loading`)
    static var loading: Self {
        HTMLAttribute(name: "loading", value: nil)
    }
}

public extension HTMLTrait.Attributes.shoelace {
    protocol progressValue {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.shoelace.progressValue {
    /// The current progress as a percentage. Default `0`.
    /// - Parameter percentage: The current progress as a percentage, 0 to 100.
    /// - Returns: The HTMLAttribute (`value="(percentage)"`)
    static func value(_ percentage: Int) -> Self {
        HTMLAttribute(name: "value", value: String(percentage))
    }
}

public extension HTMLTrait.Attributes.shoelace {
    protocol date {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.shoelace.date {
    /// The date/time to format. If not set, the current date and time will be used. When passing a string, it’s strongly recommended to use the ISO 8601 format to ensure timezones are handled correctly. To convert a date to this format in JavaScript, use `date.toISOString()`. Default `new Date()`.
    /// - Parameter date: The date to format.
    /// - Returns: The HTMLAttribute (`date="(value)"`)
    static func date(_ date: Date) -> Self {
        HTMLAttribute(name: "date", value: ISO8601DateFormatter().string(from: date))
    }
}



// TODO: upstream to Elementary
public extension HTMLTrait.Attributes {
    protocol value {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.value {
    static func value(_ value: String) -> Self {
        HTMLAttribute(name: "value", value: value)
    }
}

public extension HTMLTrait.Attributes {
    protocol readonly {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.value {
    static func readonly() -> Self {
        HTMLAttribute(name: "readonly", value: nil)
    }
}

extension HTMLTag.input: HTMLTrait.Attributes.readonly {}

public extension HTMLTrait.Attributes {
    protocol pattern {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.pattern {
    static func pattern(_ pattern: String) -> Self {
        HTMLAttribute(name: "pattern", value: pattern)
    }
}

extension HTMLTag.input: HTMLTrait.Attributes.pattern {}

public extension HTMLTrait.Attributes {
    protocol minlength {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.minlength {
    static func minlength(_ length: Int) -> Self {
        HTMLAttribute(name: "minlength", value: String(length))
    }
}

extension HTMLTag.input: HTMLTrait.Attributes.minlength {}

public extension HTMLTrait.Attributes {
    protocol maxlength {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.maxlength {
    static func maxlength(_ length: Int) -> Self {
        HTMLAttribute(name: "maxlength", value: String(length))
    }
}

extension HTMLTag.input: HTMLTrait.Attributes.maxlength {}

public extension HTMLTrait.Attributes {
    protocol min {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.min {
    static func min(_ minVal: Int) -> Self {
        HTMLAttribute(name: "min", value: String(minVal))
    }

    static func min(_ dateString: String) -> Self {
        HTMLAttribute(name: "min", value: dateString)
    }
}

extension HTMLTag.input: HTMLTrait.Attributes.min {}

public extension HTMLTrait.Attributes {
    protocol max {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.max {
    static func max(_ maxVal: Int) -> Self {
        HTMLAttribute(name: "max", value: String(maxVal))
    }

    static func min(_ dateString: String) -> Self {
        HTMLAttribute(name: "max", value: dateString)
    }
}

extension HTMLTag.input: HTMLTrait.Attributes.max {}

public extension HTMLTrait.Attributes {
    protocol step {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.step {
    static func step(_ step: Int) -> Self {
        HTMLAttribute(name: "min", value: String(step))
    }
}

extension HTMLTag.input: HTMLTrait.Attributes.step {}

public extension HTMLTrait.Attributes {
    protocol autocapitalize {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.autocapitalize {
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

public extension HTMLTrait.Attributes {
    protocol autocorrect {}
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.autocorrect {
    enum AutocorrectValue: String {
        case off
        case on
    }

    static func autocorrect(_ value: AutocorrectValue) -> Self {
        HTMLAttribute(name: "autocorrect", value: value.rawValue)
    }
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.Global {
    static func enterkeyhint(_ value: String) -> Self {
        HTMLAttribute(name: "enterkeyhint", value: value)
    }
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.Global {
    static func spellcheck(_ value: Bool) -> Self {
        HTMLAttribute(name: "spellcheck", value: String(value))
    }
}

public extension HTMLAttribute where Tag: HTMLTrait.Attributes.Global {
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
