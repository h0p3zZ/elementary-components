import Elementary

public extension HTMLTag {
    enum SLDetails: HTMLTrait.Shoelace {
        public static let name = "sl-details"
    }
}

public typealias SLDetails<Content: HTML> = HTMLElement<HTMLTag.SLDetails, Content>

// Component under construction - not all attributes are implemented
public extension HTMLAttribute where Tag == HTMLTag.SLDetails {
    static func summary(_ summary: String) -> Self {
        HTMLAttribute(name: "summary", value: summary)
    }
}
