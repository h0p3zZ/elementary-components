import Elementary

public extension HTMLTag {
    enum SLBadge: HTMLTrait.Shoelace {
        public static let name = "sl-badge"
    }
}

public typealias SLBadge<Content: HTML> = HTMLElement<HTMLTag.SLBadge, Content>

// Should contain all the attributes defined on Shoelace's SLBadge component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/badge
public extension HTMLAttribute where Tag == HTMLTag.SLBadge {
    enum SLBadgeVariantValue: String {
        case primary
        case success
        case neutral
        case warning
        case danger
    }

    /// The badge’s theme variant. Default `primary`.
    /// - Parameter value: The variant of the badge (`primary`, `success`, `neutral`, `warning`, `danger`).
    /// - Returns: The HTMLAttribute (`variant="(value)"`)
    static func variant(_ value: SLBadgeVariantValue) -> Self {
        HTMLAttribute(name: "variant", value: value.rawValue)
    }

    /// Makes the badge pulsate to draw attention. Default `false`.
    static var pulse: Self {
        HTMLAttribute(name: "pulse", value: nil)
    }
}

extension HTMLTag.SLBadge: HTMLTrait.Attributes.shoelace.pill {}