import Elementary

public extension HTMLTag {
    enum SLRadioButton: HTMLTrait.Shoelace {
        public static let name = "sl-radio-button"
    }
}

public typealias SLRadioButton<Content: HTML> = HTMLElement<HTMLTag.SLRadioButton, Content>

// Should contain all the attributes defined on Shoelace's SLRadioButton component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/radio-button
extension HTMLTag.SLRadioButton: HTMLTrait.Attributes.value {}
extension HTMLTag.SLRadioButton: HTMLTrait.Attributes.disabled {}
extension HTMLTag.SLRadioButton: HTMLTrait.Attributes.shoelace.size {}
extension HTMLTag.SLRadioButton: HTMLTrait.Attributes.shoelace.pill {}