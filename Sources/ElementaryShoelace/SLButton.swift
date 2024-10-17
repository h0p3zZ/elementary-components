import Elementary

public extension HTMLTag {
    enum SLButton: HTMLTrait.Paired {
        public static let name = "sl-button"
        public static let _rendersInline = false // why is this needed?
    }
}

public typealias SLButton<Content: HTML> = HTMLElement<HTMLTag.SLButton, Content>

// Component under construction - not all attributes are implemented
public extension HTMLAttribute where Tag == HTMLTag.SLButton {
    enum Variant: String {
        case `default`
        case primary
        case success
        case neutral
        case warning
        case danger
        case text
    }

    static func variant(_ variant: Variant) -> Self {
        HTMLAttribute(name: "variant", value: variant.rawValue)
    }

    static func download(_ url: String) -> Self {
        HTMLAttribute(name: "download", value: url)
    }

    static var outline: Self {
        HTMLAttribute(name: "outline", value: nil)
    }

    static var circle: Self {
        HTMLAttribute(name: "circle", value: nil)
    }

    static var caret: Self {
        HTMLAttribute(name: "caret", value: nil)
    }

    static var loading: Self {
        HTMLAttribute(name: "loading", value: nil)
    }
}

extension HTMLTag.SLButton: HTMLTrait.Attributes.href {}
extension HTMLTag.SLButton: HTMLTrait.Attributes.target {}
extension HTMLTag.SLButton: HTMLTrait.Attributes.disabled {}
extension HTMLTag.SLButton: HTMLTrait.Attributes.name {}

extension HTMLTag.SLButton: HTMLTrait.Attributes.shoelace.size {}
extension HTMLTag.SLButton: HTMLTrait.Attributes.shoelace.pill {}
