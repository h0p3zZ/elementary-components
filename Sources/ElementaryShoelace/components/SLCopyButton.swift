import Elementary

public extension HTMLTag {
    enum SLCopyButton: HTMLTrait.Shoelace {
        public static let name = "sl-copy-button"
    }
}

public typealias SLCopyButton<Content: HTML> = HTMLElement<HTMLTag.SLCopyButton, Content>

// Should contain all the attributes defined on shoelaces SLCopyButton component
// - that can be rendered on the server side and are not only getters
public extension HTMLAttribute where Tag == HTMLTag.SLCopyButton {
    /// An id that references an element in the same document from which data will be copied. If both this and value are present, this value will take precedence. By default, the target element’s textContent will be copied. To copy an attribute, append the attribute name wrapped in square brackets, e.g. from="el[value]". To copy a property, append a dot and the property name, e.g. from="el.value". 
    /// - Parameter value: The element id to copy from.
    /// - Returns: The HTMLAttribute (`from="(value)"`)
    static func from(_ value: String) -> Self {
        HTMLAttribute(name: "from", value: value)
    }

    /// A custom label to show in the tooltip.
    /// - Parameter value: The custom label to show in the tooltip.
    /// - Returns: The HTMLAttribute (`copy-label="(value)"`)
    static func copyLabel(_ value: String) -> Self {
        HTMLAttribute(name: "copy-label", value: value)
    }

    /// A custom label to show in the tooltip after copying.
    /// - Parameter value: The custom label to show in the tooltip after copying.
    /// - Returns: The HTMLAttribute (`success-label="(value)"`)
    static func successLabel(_ value: String) -> Self {
        HTMLAttribute(name: "success-label", value: value)
    }

    /// A custom label to show in the tooltip when a copy error occurs.
    /// - Parameter value: The custom label to show in the tooltip when a copy error occurs.
    /// - Returns: The HTMLAttribute (`error-label="(value)"`)
    static func errorLabel(_ value: String) -> Self {
        HTMLAttribute(name: "error-label", value: value)
    }

    /// he length of time to show feedback before restoring the default trigger. Default `1000`.
    /// - Parameter value: The length of time to show feedback before restoring the default trigger.
    /// - Returns: The HTMLAttribute (`feedback-duration="(value)"`)
    static func feedbackDuration(_ value: Int) -> Self {
        HTMLAttribute(name: "feedback-duration", value: String(value))
    }

    enum SLCopyButtonTooltipValue: String {
        case top
        case right
        case bottom
        case left
    }

    /// The preferred placement of the tooltip. Default `top`.
    /// - Parameter value: The preferred placement of the tooltip (`top`, `right`, `bottom`, `left`).
    /// - Returns: The HTMLAttribute (`tooltip-placement="(value)"`)
    static func tooltipPlacement(_ value: SLCopyButtonTooltipValue) -> Self {
        HTMLAttribute(name: "tooltip-placement", value: value.rawValue)
    }


}

extension HTMLTag.SLCopyButton: HTMLTrait.Attributes.value {}
extension HTMLTag.SLCopyButton: HTMLTrait.Attributes.disabled {}
extension HTMLTag.SLCopyButton: HTMLTrait.Attributes.shoelace.hoist {}