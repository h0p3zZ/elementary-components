import Elementary

public extension HTMLTag {
    enum SLCard: HTMLTrait.Shoelace {
        public static let name = "sl-card"
    }
}

public typealias SLCard<Content: HTML> = HTMLElement<HTMLTag.SLCard, Content>

// Should contain all the attributes defined on shoelaces SLCard component
// - that can be rendered on the server side and are not only getters
public extension HTMLAttribute where Tag == HTMLTag.SLCard {}