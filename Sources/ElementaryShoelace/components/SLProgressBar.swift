import Elementary

public extension HTMLTag {
    enum SLProgressBar: HTMLTrait.Shoelace {
        public static let name = "sl-progress-bar"
    }
}

public typealias SLProgressBar<Content: HTML> = HTMLElement<HTMLTag.SLProgressBar, Content>

// Should contain all the attributes defined on Shoelace's SLProgressBar component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/progress-bar
public extension HTMLAttribute where Tag == HTMLTag.SLProgressBar {
    /// The current progress as a percentage. Default `0`.
    /// - Parameter percentage: The current progress as a percentage, 0 to 100.
    /// - Returns: The HTMLAttribute (`value="(percentage)"`)
    static func value(_ percentage: Int) -> Self {
        HTMLAttribute(name: "value", value: String(percentage))
    }

    /// When true, percentage is ignored, the label is hidden, and the progress bar is drawn in an indeterminate state.
    /// - Returns: The HTMLAttribute (`indeterminate`)
    static var indeterminate: Self {
        HTMLAttribute(name: "indeterminate", value: nil)
    }
}

extension HTMLTag.SLProgressBar: HTMLTrait.Attributes.label {}