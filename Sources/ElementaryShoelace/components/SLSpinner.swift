import Elementary

public extension HTMLTag {
    enum SLSpinner: HTMLTrait.Shoelace {
        public static let name = "sl-spinner"
    }
}

public typealias SLSpinner<Content: HTML> = HTMLElement<HTMLTag.SLSpinner, Content>

// Should contain all the attributes defined on Shoelace's SLSPinner component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/spinner
public extension HTMLAttribute where Tag == HTMLTag.SLSpinner { }