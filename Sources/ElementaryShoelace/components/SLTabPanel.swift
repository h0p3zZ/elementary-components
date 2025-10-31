import Elementary

public extension HTMLTag {
    enum SLTabPanel: HTMLTrait.Shoelace {
        public static let name = "sl-tab-panel"
    }
}

public typealias SLTabPanel<Content: HTML> = HTMLElement<HTMLTag.SLTabPanel, Content>

// Should contain all the attributes defined on Shoelace's SLTabPanel component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/tab-panel
public extension HTMLAttribute where Tag == HTMLTag.SLTabPanel { }

extension HTMLTag.SLTabGroup: HTMLTrait.Attributes.name {}
extension HTMLTag.SLTabGroup: HTMLTrait.Attributes.shoelace.active {}