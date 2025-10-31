import Elementary

public extension HTMLTag {
    enum SLTooltip: HTMLTrait.Shoelace {
        public static let name = "sl-tooltip"
    }
}

public typealias SLTooltip<Content: HTML> = HTMLElement<HTMLTag.SLTooltip, Content>

// Should contain all the attributes defined on Shoelace's SLTooltip component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/tooltip
public extension HTMLAttribute where Tag == HTMLTag.SLTooltip {
    /// The tooltip’s content. If you need to display HTML, use the content slot instead.
    /// - Parameter value: The string displayed inside the tooltip.
    /// - Returns: The HTMLAttribute (`content="(value)"`)
    static func content(_ value: String) -> Self {
        HTMLAttribute(name: "content", value: value)
    }

    enum SLTooltipPlacementValue: String {
        case top
        case topStart = "top-start"
        case topEnd = "top-end"
        case right
        case rightStart = "right-start"
        case rightEnd = "right-end"
        case bottom
        case bottomStart = "bottom-start"
        case bottomEnd = "bottom-end"
        case left
        case leftStart = "left-start"
        case leftEnd = "left-end"
    }

    /// The preferred placement of the tooltip. Note that the actual placement may vary as needed to keep the tooltip inside of the viewport. Defaults to `top`.
    /// - Parameter value: The placement value. Options: (`top`, `top-start`, `top-end`, `right`, `right-start`, `right-end`, `bottom`, `bottom-start`, `bottom-end`, `left`, `left-start`, `left-end`).
    /// - Returns: The HTMLAttribute (`placement="(value)"`)
    static func placement(_ value: SLTooltipPlacementValue) -> Self {
        HTMLAttribute(name: "placement", value: value.rawValue)
    }

    /// The distance in pixels from which to offset the tooltip away from its target. Defaults to `8`.
    /// - Parameter value: The distance value in pixels.
    /// - Returns: The HTMLAttribute (`distance="(value)"`)
    static func distance(_ value: Int) -> Self {
        HTMLAttribute(name: "distance", value: String(value))
    }

    /// Indicates whether or not the tooltip is open. You can use this in lieu of the show/hide methods. Defaults to `false`.
    static var open: Self {
        HTMLAttribute(name: "open", value: nil)
    }

    /// The distance in pixels from which to offset the tooltip along its target. Defaults to `0`.
    /// - Parameter value: The skidding value in pixels.
    /// - Returns: The HTMLAttribute (`skidding="(value)"`)
    static func skidding(_ value: Int) -> Self {
        HTMLAttribute(name: "skidding", value: String(value))
    }

    /// Controls how the tooltip is activated. Possible options include click, hover, focus, and manual. Multiple options can be passed by separating them with a space. When manual is used, the tooltip must be activated programmatically.
    /// - Parameter value: The trigger value.
    /// - Returns: The HTMLAttribute (`trigger="(value)"`)
    static func trigger(_ value: String) -> Self {
        HTMLAttribute(name: "trigger", value: value)
    }

    /// Enable this option to prevent the tooltip from being clipped when the component is placed inside a container with overflow: auto|hidden|scroll. Hoisting uses a fixed positioning strategy that works in many, but not all, scenarios.
    static var hoist: Self {
        HTMLAttribute(name: "hoist", value: nil)
    }
}

extension HTMLTag.SLTooltip: HTMLTrait.Attributes.disabled {}