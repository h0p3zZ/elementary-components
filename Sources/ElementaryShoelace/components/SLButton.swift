import Elementary

public extension HTMLTag {
    enum SLButton: HTMLTrait.Shoelace {
        public static let name = "sl-button"
    }
}

public typealias SLButton<Content: HTML> = HTMLElement<HTMLTag.SLButton, Content>

// Should contain all the attributes defined on Shoelace's SlButton component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/button
public extension HTMLAttribute where Tag == HTMLTag.SLButton {
    enum ButtonVariant: String {
        case `default`
        case primary
        case success
        case neutral
        case warning
        case danger
        case text
    }

    /// The button’s theme variant. Default `default`.
    /// - Parameter variant: The button variant (`default`, `primary`, `success`, `neutral`, `warning`, `danger`, `text`).
    /// - Returns: The HTMLAttribute (`variant="(value)"`)
    static func variant(_ variant: ButtonVariant) -> Self {
        HTMLAttribute(name: "variant", value: variant.rawValue)
    }

    /// Draws the button with a caret. Used to indicate that the button triggers a dropdown menu or similar behavior. Default `false`.
    /// - Returns: The HTMLAttribute (`caret`)
    static var caret: Self {
        HTMLAttribute(name: "caret", value: nil)
    }

    /// Draws an outlined button. Default `false`.
    /// - Returns: The HTMLAttribute (`outline`)
    static var outline: Self {
        HTMLAttribute(name: "outline", value: nil)
    }

    /// Draws a circular icon button. When this attribute is present, the button expects a single <sl-icon> in the default slot. Default `false`.
    /// - Returns: The HTMLAttribute (`circle`)
    static var circle: Self {
        HTMLAttribute(name: "circle", value: nil)
    }

    enum SLButtonTypeValue: String {
        case button
        case submit
        case reset
    }

    /// The type of button. Note that the default value is button instead of submit, which is opposite of how native <button> elements behave. When the type is submit, the button will submit the surrounding form. Default `button`.
    /// - Parameter type: The button type (`button`, `submit`, `reset`).
    /// - Returns: The HTMLAttribute (`type="(value)"`)
    static func type(_ type: SLButtonTypeValue) -> Self {
        HTMLAttribute(name: "type", value: type.rawValue)
    }

    /// Used to override the form owner’s action attribute.
    /// - Parameter url: The URL to override the form owner’s action attribute.
    /// - Returns: The HTMLAttribute (`formaction="(url)"`)
    static func formAction(_ url: String) -> Self {
        HTMLAttribute(name: "formaction", value: url)
    }

    enum SLButtonFormEnctypeValue: String {
        case applicationXWWWFormUrlencoded = "application/x-www-form-urlencoded"
        case multipartFormData = "multipart/form-data"
        case textPlain = "text/plain"
    }

    /// Used to override the form owner’s enctype attribute. Default ` `.
    /// - Parameter enctype: The form owner’s enctype attribute (`application/x-www-form-urlencoded`, `multipart/form-data`, `text/plain`).
    /// - Returns: The HTMLAttribute (`formenctype="(enctype)"`)
    static func formEnctype(_ enctype: SLButtonFormEnctypeValue) -> Self {
        HTMLAttribute(name: "formenctype", value: enctype.rawValue)
    }

    enum SLButtonFormMethodValue: String {
        case get
        case post
    }

    /// Used to override the form owner’s method attribute. Default ` `.
    /// - Parameter method: The selected method (`get`, `post`).
    /// - Returns: The HTMLAttribute (`formmethod="(method)"`)
    static func formMethod(_ method: SLButtonFormMethodValue) -> Self {
        HTMLAttribute(name: "formmethod", value: method.rawValue)
    }

    /// Used to override the form owner’s novalidate attribute. Default `false`.
    /// - Returns: The HTMLAttribute (`formnovalidate`)
    static var formNoValidate: Self {
        HTMLAttribute(name: "formnovalidate", value: nil)
    }

    struct SLButtonFormTargetValue: RawRepresentable {
        public var rawValue: String

        public init(rawValue: String) {
            self.rawValue = rawValue
        }

        public static var blank: Self { .init(rawValue: "_blank") }
        public static var _self: Self { .init(rawValue: "_self") }
        public static var _parent: Self { .init(rawValue: "_parent") }
        public static var _top: Self { .init(rawValue: "_top") }
    }

    /// Used to override the form owner’s `target` attribute.
    /// - Parameter target: The target attribute (`_blank`, `_self`, `_parent`, `_top`).
    /// - Returns: The HTMLAttribute (`formtarget="(target)"`)
    static func formTarget(_ target: SLButtonFormTargetValue) -> Self {
        HTMLAttribute(name: "formtarget", value: target.rawValue)
    }
}

extension HTMLTag.SLButton: HTMLTrait.Attributes.shoelace.size {}
extension HTMLTag.SLButton: HTMLTrait.Attributes.disabled {}
extension HTMLTag.SLButton: HTMLTrait.Attributes.shoelace.loading {}
extension HTMLTag.SLButton: HTMLTrait.Attributes.shoelace.pill {}
extension HTMLTag.SLButton: HTMLTrait.Attributes.name {}
extension HTMLTag.SLButton: HTMLTrait.Attributes.value {}
extension HTMLTag.SLButton: HTMLTrait.Attributes.href {}
extension HTMLTag.SLButton: HTMLTrait.Attributes.target {}
extension HTMLTag.SLButton: HTMLTrait.Attributes.rel {}
extension HTMLTag.SLButton: HTMLTrait.Attributes.shoelace.download {}
extension HTMLTag.SLButton: HTMLTrait.Attributes.form {}
