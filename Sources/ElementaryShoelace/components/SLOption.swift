import Elementary

public extension HTMLTag {
    enum SLOption: HTMLTrait.Shoelace {
        public static let name = "sl-option"
    }
}

public typealias SLOption<Content: HTML> = HTMLElement<HTMLTag.SLOption, Content>

// Should contain all the attributes defined on Shoelace's SLOption component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/option
extension HTMLTag.SLOption: HTMLTrait.Attributes.value {}
extension HTMLTag.SLOption: HTMLTrait.Attributes.disabled {}