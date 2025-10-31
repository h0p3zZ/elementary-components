import Elementary

public extension HTMLTag {
    enum SLSpinner: HTMLTrait.Shoelace {
        public static let name = "sl-spinner"
    }
}

public typealias SLSpinner<Content: HTML> = HTMLElement<HTMLTag.SLSpinner, Content>