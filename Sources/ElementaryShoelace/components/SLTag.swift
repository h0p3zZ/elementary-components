import Elementary

public extension HTMLTag {
    enum SLTag: HTMLTrait.Shoelace {
        public static let name = "sl-tag"
    }
}

public typealias SLTag<Content: HTML> = HTMLElement<HTMLTag.SLTag, Content>

// Should contain all the attributes defined on Shoelace's SLTag component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/tag
public extension HTMLAttribute where Tag == HTMLTag.SLTag {
    enum SLTagVariantValue: String {
        case primary
        case success
        case neutral
        case warning
        case danger
        case text
    }

    /// The tag’s theme variant.
    /// - Parameter value: The variant value. Options: (`primary`, `success`, `neutral`, `warning`, `danger`, `text`).
    /// - Returns: The HTMLAttribute (`variant="(value)"`)
    static func variant(_ value: SLTagVariantValue) -> HTMLAttribute {
        HTMLAttribute(name: "variant", value: value.rawValue)
    }

    /// Makes the tag removable and shows a remove button.
    static var removable: HTMLAttribute {
        HTMLAttribute(name: "removable", value: nil)
    }
}

extension HTMLTag.SLTag: HTMLTrait.Attributes.shoelace.size {}
extension HTMLTag.SLTag: HTMLTrait.Attributes.shoelace.pill {}