import Elementary

public extension HTMLTag {
    enum SLColorPicker: HTMLTrait.Shoelace {
        public static let name = "sl-color-picker"
    }
}

public typealias SLColorPicker<Content: HTML> = HTMLElement<HTMLTag.SLColorPicker, Content>

// Should contain all the attributes defined on Shoelace's SLColorPicker component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/color-picker
public extension HTMLAttribute where Tag == HTMLTag.SLColorPicker {
    enum SLColorPickerFormatValue: String {
        case hex
        case rgb
        case hsl
        case hsv
    }

    /// The format to use. If opacity is enabled, these will translate to HEXA, RGBA, HSLA, and HSVA respectively. The color picker will accept user input in any format (including CSS color names) and convert it to the desired format. Default `hex`.
    /// - Parameter format: The format to use (`hex`, `rgb`, `hsl`, `hsv`).
    /// - Returns: The HTMLAttribute (`format="(value)"`)
    static func format(_ format: SLColorPickerFormatValue) -> Self {
        HTMLAttribute(name: "format", value: format.rawValue)
    }

    /// Renders the color picker inline rather than in a dropdown. Default `false`.
    /// - Returns: The HTMLAttribute (`inline`)
    static var inline: Self {
        HTMLAttribute(name: "inline", value: nil)
    }

    /// Removes the button that lets users toggle between format. Default `false`.
    /// - Returns: The HTMLAttribute (`noFormatToggle`)
    static var noFormatToggle: Self {
        HTMLAttribute(name: "no-format-toggle", value: nil)
    }

    /// Shows the opacity slider. Enabling this will cause the formatted value to be HEXA, RGBA, or HSLA. Default `false`.
    /// - Returns: The HTMLAttribute (`opacity`)
    static var opacity: Self {
        HTMLAttribute(name: "opacity", value: nil)
    }

    /// By default, values are lowercase. With this attribute, values will be uppercase instead. Default `false`.
    /// - Returns: The HTMLAttribute (`uppercase`)
    static var uppercase: Self {
        HTMLAttribute(name: "uppercase", value: nil)
    }

    /// Predefined color swatch to display as presets in the color picker. Can include any format the color picker can parse, including HEX(A), RGB(A), HSL(A), HSV(A), and CSS color names. Each color must be separated by a semicolon (`;`). Alternatively, you can pass an array of color values to this property using JavaScript.
    /// - Parameter swatches: One or more predefined color swatches to display as presets in the color picker.
    /// - Returns: The HTMLAttribute (`swatches="(value)"`)
    static func swatches(_ swatch: String) -> Self {
        HTMLAttribute(name: "swatches", value: swatch)
    }

    /// Predefined color swatches to display as presets in the color picker. Can include any format the color picker can parse, including HEX(A), RGB(A), HSL(A), HSV(A), and CSS color names. Each color must be separated by a semicolon (`;`). Alternatively, you can pass an array of color values to this property using JavaScript.
    /// - Parameter swatches: One or more predefined color swatches to display as presets in the color picker.
    /// - Returns: The HTMLAttribute (`swatches="(value)"`)
    static func swatches(_ swatchesArr: [String]) -> Self {
        swatches(swatchesArr.joined(separator: ";"))
    }


}

extension HTMLTag.SLColorPicker: HTMLTrait.Attributes.value {}
extension HTMLTag.SLColorPicker: HTMLTrait.Attributes.shoelace.defaultValue {}
extension HTMLTag.SLColorPicker: HTMLTrait.Attributes.label {}
extension HTMLTag.SLColorPicker: HTMLTrait.Attributes.shoelace.size {}
extension HTMLTag.SLColorPicker: HTMLTrait.Attributes.name {}
extension HTMLTag.SLColorPicker: HTMLTrait.Attributes.disabled {}
extension HTMLTag.SLColorPicker: HTMLTrait.Attributes.shoelace.hoist {}
extension HTMLTag.SLColorPicker: HTMLTrait.Attributes.form {}
extension HTMLTag.SLColorPicker: HTMLTrait.Attributes.required {}