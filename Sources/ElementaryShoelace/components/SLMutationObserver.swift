import Elementary

public extension HTMLTag {
    enum SLMutationObserver: HTMLTrait.Shoelace {
        public static let name = "sl-mutation-observer"
    }
}

public typealias SLMutationObserver<Content: HTML> = HTMLElement<HTMLTag.SLMutationObserver, Content>

// Should contain all the attributes defined on Shoelace's SLMutationObserver component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/mutation-observer
public extension HTMLAttribute where Tag == HTMLTag.SLMutationObserver {
    /// Watches for changes to attributes. To watch only specific attributes, separate them by a space, e.g. `attr="class id title"``. To watch all attributes, use `*`.
    /// - Parameter attr: The name of the attribute to watch.
    /// - Returns: The HTMLAttribute (`attr="(value)"`)
    static func attr(_ attr: String) -> Self {
        .init(name: "attr", value: attr)
    }

    /// Indicates whether or not the attribute’s previous value should be recorded when monitoring changes.
    /// - Returns: The HTMLAttribute (`attr-old-value`)
    static var attrOldValue: Self {
        .init(name: "attr-old-value", value: "")
    }

    /// Watches for changes to the character data contained within the node.
    /// - Returns: The HTMLAttribute (`char-data`)
    static var charData: Self {
        .init(name: "char-data", value: "")
    }

    /// Indicates whether or not the previous value of the node’s text should be recorded.
    /// - Returns: The HTMLAttribute (`char-data-old-value`)
    static var charDataOldValue: Self {
        .init(name: "char-data-old-value", value: "")
    }

    /// Watches for the addition or removal of new child nodes.
    /// - Returns: The HTMLAttribute (`child-list`)
    static var childList: Self {
        .init(name: "child-list", value: "")
    }
}

extension HTMLTag.SLMutationObserver: HTMLTrait.Attributes.disabled {}