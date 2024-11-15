import Elementary

public extension HTMLTag {
    enum SLIconButton: HTMLTrait.Shoelace {
        public static let name = "sl-icon-button"
    }
}

public typealias SLIconButton<Content: HTML> = HTMLElement<HTMLTag.SLIconButton, Content>

// Should contain all the attributes defined on Shoelace's SLIconButton component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/icon-button
extension HTMLTag.SLIconButton: HTMLTrait.Attributes.shoelace.SLIconProtocol {}
extension HTMLTag.SLIconButton: HTMLTrait.Attributes.href {}
extension HTMLTag.SLIconButton: HTMLTrait.Attributes.target {}
extension HTMLTag.SLIconButton: HTMLTrait.Attributes.shoelace.download {}
extension HTMLTag.SLIconButton: HTMLTrait.Attributes.label {}
extension HTMLTag.SLIconButton: HTMLTrait.Attributes.disabled {}
