import Elementary

public extension HTMLTag {
    enum SLMenuItem: HTMLTrait.Shoelace {
        public static let name = "sl-menu-item"
    }
}

public typealias SLMenuItem<Content: HTML> = HTMLElement<HTMLTag.SLMenuItem, Content>

// Should contain all the attributes defined on Shoelace's SLMenuItem component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/menu-item
public extension HTMLAttribute where Tag == HTMLTag.SLMenuItem {
    enum SLMenuItemTypeValue: String {
        case normal
        case checkbox
    }

    /// The type of menu item to render. To use `checked`, this value must be set to `checkbox`. Default is `normal`.
    /// - Parameter type: The type of menu item to render (`normal`, `checkbox`).
    /// - Returns: The HTMLAttribute (`type="(value)"`)
    static func type(_ type: SLMenuItemTypeValue) -> Self {
        .init(name: "type", value: type.rawValue)
    }
}

extension HTMLTag.SLMenuItem: HTMLTrait.Attributes.shoelace.checked {}
extension HTMLTag.SLMenuItem: HTMLTrait.Attributes.value {}
extension HTMLTag.SLMenuItem: HTMLTrait.Attributes.shoelace.loading {}
extension HTMLTag.SLMenuItem: HTMLTrait.Attributes.disabled {}