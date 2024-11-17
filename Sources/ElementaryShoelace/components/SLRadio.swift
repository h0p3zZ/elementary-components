import Elementary

public extension HTMLTag {
    enum SLRadio: HTMLTrait.Shoelace {
        public static let name = "sl-radio"
    }
}

public typealias SLRadio<Content: HTML> = HTMLElement<HTMLTag.SLRadio, Content>

// Should contain all the attributes defined on Shoelace's SLRadio component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/format-date
extension HTMLTag.SLRadio: HTMLTrait.Attributes.value {}
extension HTMLTag.SLRadio: HTMLTrait.Attributes.shoelace.size {}
extension HTMLTag.SLRadio: HTMLTrait.Attributes.disabled {}