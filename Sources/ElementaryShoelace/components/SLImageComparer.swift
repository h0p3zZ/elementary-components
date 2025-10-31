import Elementary

public extension HTMLTag {
    enum SLImageComparer: HTMLTrait.Shoelace {
        public static let name = "sl-image-comparer"
    }
}

public typealias SLImageComparer<Content: HTML> = HTMLElement<HTMLTag.SLImageComparer, Content>

// Should contain all the attributes defined on Shoelace's SLImageComparer component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/image-comparer
public extension HTMLAttribute where Tag == HTMLTag.SLImageComparer {
    /// The position of the divider as a percentage. Default `50`.
    /// - Parameter position: The position of the divider as a percentage.
    /// - Returns: The HTMLAttribute (`position="(value)"`)
    static func position(_ position: Int) -> Self {
        HTMLAttribute(name: "position", value: String(position))
    }
}