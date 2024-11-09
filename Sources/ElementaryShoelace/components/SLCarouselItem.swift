import Elementary

public extension HTMLTag {
    enum SLCarouselItem: HTMLTrait.Shoelace {
        public static let name = "sl-carousel-item"
    }
}

public typealias SLCarouselItem<Content: HTML> = HTMLElement<HTMLTag.SLCarouselItem, Content>

// Should contain all the attributes defined on Shoelace's SLCarouselItem component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/carousel-item
public extension HTMLAttribute where Tag == HTMLTag.SLDetails {}