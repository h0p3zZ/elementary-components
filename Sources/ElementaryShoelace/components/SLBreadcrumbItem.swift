import Elementary

public extension HTMLTag {
    enum SLBreadcrumbItem: HTMLTrait.Shoelace {
        public static let name = "sl-breadcrumb-item"
    }
}

public typealias SLBreadcrumbItem<Content: HTML> = HTMLElement<HTMLTag.SLBreadcrumbItem, Content>

// Should contain all the attributes defined on Shoelace's SLBreadcrumbItem component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/breadcrumb-item
extension HTMLTag.SLBreadcrumbItem: HTMLTrait.Attributes.href {}
extension HTMLTag.SLBreadcrumbItem: HTMLTrait.Attributes.target {}
extension HTMLTag.SLBreadcrumbItem: HTMLTrait.Attributes.rel {}