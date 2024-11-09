import Elementary

public extension HTMLTag {
    enum SLBreadcrumb: HTMLTrait.Shoelace {
        public static let name = "sl-breadcrumb"
    }
}

public typealias SLBreadcrumb<Content: HTML> = HTMLElement<HTMLTag.SLBreadcrumb, Content>

// Should contain all the attributes defined on shoelaces SLBreadcrumb component
// - that can be rendered on the server side and are not only getters
extension HTMLTag.SLBreadcrumb: HTMLTrait.Attributes.label {}