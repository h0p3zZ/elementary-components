import Elementary

public extension HTMLTag {
    enum SLSPlitPanel: HTMLTrait.Shoelace {
        public static let name = "sl-split-panel"
    }
}

public typealias SLSPlitPanel<Content: HTML> = HTMLElement<HTMLTag.SLSPlitPanel, Content>

// Should contain all the attributes defined on Shoelace's SLSkeleton component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/skeleton
public extension HTMLAttribute where Tag == HTMLTag.SLSPlitPanel {
    /// 	The current position of the divider from the primary panel’s edge as a percentage 0–100. Defaults to 50% of the container’s initial size.
    /// - Parameter percentage: The percentage value (0-100).
    /// - Returns: The HTMLAttribute (`position="(percentage)"`)
    static func position(_ percentage: Int) -> Self {
        HTMLAttribute(name: "position", value: String(percentage))
    }

    /// The current position of the divider from the primary panel’s edge in pixels.
    /// - Parameter pixels: The pixel value.
    /// - Returns: The HTMLAttribute (`position-in-pixels="(pixels)"`)
    static func positionInPixels(_ pixels: Int) -> Self {
        HTMLAttribute(name: "position-in-pixels", value: String(pixels))
    }

    /// Draws the split panel in a vertical orientation with the start and end panels stacked. Default `false`.
    static var vertical: Self {
        HTMLAttribute(name: "vertical", value: nil)
    }

    enum SLSplitPanelPrimaryValue: String {
        case start
        case end
        case unedfined
    }

    /// If no primary panel is designated, both panels will resize proportionally when the host element is resized. If a primary panel is designated, it will maintain its size and the other panel will grow or shrink as needed when the host element is resized.
    /// - Parameter value: The primary panel (`start`, `end`, `undefined`).
    /// - Returns: The HTMLAttribute (`primary="(value)"`)
    static func primary(_ value: SLSplitPanelPrimaryValue) -> Self {
        HTMLAttribute(name: "primary", value: value.rawValue)
    }

    /// 	Either one or more space-separated values at which the divider should snap, in pixels, percentages, or repeat expressions e.g. '100px 50% 500px' or repeat(50%) 10px, or a function which takes in a SnapFunctionParams, and returns a position to snap to, e.g. ({ pos }) => Math.round(pos / 8) * 8`.
    /// - Parameter value: The desired snap distance value.
    /// - Returns: The HTMLAttribute (`snap="(value)"`)
    static func snap(_ value: String) -> Self {
        HTMLAttribute(name: "snap", value: value)
    }

    /// How close the divider must be to a snap point until snapping occurs.
    /// - Parameter value: The desired snap threshold in pixels. Default is `12`.
    /// - Returns: The HTMLAttribute (`snap-threshold="(value)"`)
    static func snapThreshold(_ value: Int) -> Self {
        HTMLAttribute(name: "snap-threshold", value: String(value))
    }
}

extension HTMLTag.SLSPlitPanel: HTMLTrait.Attributes.disabled {}