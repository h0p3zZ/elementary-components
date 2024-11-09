import Elementary

public extension HTMLTag {
    enum SLDetails: HTMLTrait.Shoelace {
        public static let name = "sl-details"
    }
}

public typealias SLDetails<Content: HTML> = HTMLElement<HTMLTag.SLDetails, Content>

// Should contain all the attributes defined on shoelaces SLDetails component
// - that can be rendered on the server side and are not only getters
public extension HTMLAttribute where Tag == HTMLTag.SLDetails {
    /// The summary to show in the header. If you need to display HTML, use the summary slot instead.
    /// - Parameter summary: The summary to show in the header.
    /// - Returns: The HTMLAttribute (`summary="(summary)"`)
    static func summary(_ summary: String) -> Self {
        HTMLAttribute(name: "summary", value: summary)
    }
}

extension HTMLTag.SLDetails: HTMLTrait.Attributes.shoelace.open {}
extension HTMLTag.SLDetails: HTMLTrait.Attributes.disabled {}