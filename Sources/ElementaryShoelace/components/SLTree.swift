import Elementary

public extension HTMLTag {
    enum SLTree: HTMLTrait.Shoelace {
        public static let name = "sl-tree"
    }
}

public typealias SLTree<Content: HTML> = HTMLElement<HTMLTag.SLTree, Content>

// Should contain all the attributes defined on Shoelace's SLTree component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/tree
public extension HTMLAttribute where Tag == HTMLTag.SLTree {
    enum SLTreeSelectionModeValue: String {
        case single
        case multiple
        case leaf
    }

    /// The selection behavior of the tree. Single selection allows only one node to be selected at a time. Multiple displays checkboxes and allows more than one node to be selected. Leaf allows only leaf nodes to be selected. Defaults to `single`.
    /// - Parameter value: The selection mode value. Options: (`single`, `multiple`, `leaf`).
    /// - Returns: The HTMLAttribute (`selection-mode="(value)"`)
    static func selection(_ value: SLTreeSelectionModeValue) -> Self {
        HTMLAttribute(name: "selection-mode", value: value.rawValue)
    }
}