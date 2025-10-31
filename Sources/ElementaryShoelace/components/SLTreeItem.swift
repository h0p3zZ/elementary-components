import Elementary

public extension HTMLTag {
    enum SLTreeItem: HTMLTrait.Shoelace {
        public static let name = "sl-tree-item"
    }
}

public typealias SLTreeItem<Content: HTML> = HTMLElement<HTMLTag.SLTreeItem, Content>

// Should contain all the attributes defined on Shoelace's SLTreeItem component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/tree-item
public extension HTMLAttribute where Tag == HTMLTag.SLTreeItem {
    /// Expands the tree item. Defaults to `false`.
    static var expanded: Self {
        HTMLAttribute(name: "expanded", value: nil)
    }

    /// Draws the tree item in a selected state. Defaults to `false`.
    static var selected: Self {
        HTMLAttribute(name: "selected", value: nil)
    }

    /// Enables lazy loading behavior. Defaults to `false`.
    static var lazy: Self {
        HTMLAttribute(name: "lazy", value: nil)
    }
}

extension HTMLTag.SLTreeItem: HTMLTrait.Attributes.disabled {}