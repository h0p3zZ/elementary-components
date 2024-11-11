import Elementary

public extension HTMLTag {
    enum SLFormatBytes: HTMLTrait.Shoelace {
        public static let name = "sl-format-bytes"
    }
}

public typealias SLFormatBytes<Content: HTML> = HTMLElement<HTMLTag.SLFormatBytes, Content>

// Should contain all the attributes defined on Shoelace's SLFormatBytes component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/format-bytes
public extension HTMLAttribute where Tag == HTMLTag.SLFormatBytes {
    enum SLFormatBytesUnitValue: String {
        case byte
        case bit
    }
    
    /// The type of unit to display. Default `byte`.
    /// - Parameter unit: The unit to display (`byte`, `bit`).
    /// - Returns: The HTMLAttribute (`unit="(value)"`)
    static func unit(_ unit: SLFormatBytesUnitValue) -> Self {
        HTMLAttribute(name: "unit", value: unit.rawValue)
    }

    enum SLFormatBytesDisplayValue: String {
        case long
        case short
        case narrow
    }

    /// Determines how to display the result, e.g. “100 bytes”, “100 b”, or “100b”. Default `short`.
    /// - Parameter display: The display value (`long`, `short`, `narrow`).
    /// - Returns: The HTMLAttribute (`display="(value)"`)
    static func display(_ display: SLFormatBytesDisplayValue) -> Self {
        HTMLAttribute(name: "display", value: display.rawValue)
    }
}

extension HTMLTag.SLFormatBytes: HTMLTrait.Attributes.value {}