import Elementary

public extension HTMLTag {
    enum SlCarousel: HTMLTrait.Shoelace {
        public static let name = "sl-carousel"
    }
}

public typealias SlCarousel<Content: HTML> = HTMLElement<HTMLTag.SlCarousel, Content>

// Should contain all the attributes defined on shoelaces SlCarousel component
// - that can be rendered on the server side and are not only getters
public extension HTMLAttribute where Tag == HTMLTag.SlCarousel {
    /// When set, allows the user to navigate the carousel in the same direction indefinitely. Default `false`.
    /// - Returns: The HTMLAttribute (`loop`)
    static var loop: Self {
        HTMLAttribute(name: "loop", value: "loop")
    }

    /// When set, show the carousel’s navigation. Default `false`.
    /// - Returns: The HTMLAttribute (`navigation`)
    static var navigation: Self {
        HTMLAttribute(name: "navigation", value: "navigation")
    }

    /// When set, show the carousel’s pagination indicators. Default `false`.
    /// - Returns: The HTMLAttribute (`pagination`)
    static var pagination: Self {
        HTMLAttribute(name: "pagination", value: "pagination")
    }

    /// When set, the slides will scroll automatically when the user is not interacting with them. Default `false`.
    /// - Returns: The HTMLAttribute (`autoplay`)
    static var autoplay: Self {
        HTMLAttribute(name: "autoplay", value: "autoplay")
    }

    /// Specifies the amount of time, in milliseconds, between each automatic scroll. Default `3000`.
    /// - Parameter value: The amount of time, in milliseconds, between each automatic scroll.
    /// - Returns: The HTMLAttribute (`autoplay-interval="(value)"`)
    static func autoplayInterval(_ value: Int) -> Self {
        HTMLAttribute(name: "autoplay-interval", value: String(value))
    }

    /// Specifies how many slides should be shown at a given time. Default `1`.
    /// - Parameter value: The number of slides to show at a time.
    /// - Returns: The HTMLAttribute (`slides-per-page="(value)"`)
    static func slidesPerPage(_ value: Int) -> Self {
        HTMLAttribute(name: "slides-per-page", value: String(value))
    }

    /// Specifies the number of slides the carousel will advance when scrolling, useful when specifying a `slides-per-page` greater than one. It can’t be higher than `slides-per-page`. Default `1`.
    /// - Parameter value: The number of slides per move.
    /// - Returns: The HTMLAttribute (`slides-per-move="(value)"`)
    static func slidesPerMove(_ value: Int) -> Self {
        HTMLAttribute(name: "slides-per-move", value: String(value))
    }

    enum SLCarouselOrientationValue: String {
        case horizontal
        case vertical
    }

    /// Specifies the orientation in which the carousel will lay out. Default `horizontal`.
    /// - Parameter value: The orientation in which the carousel will lay out (`horizontal`, `vertical`).
    /// - Returns: The HTMLAttribute (`orientation="(value)"`)
    static func orientation(_ value: SLCarouselOrientationValue) -> Self {
        HTMLAttribute(name: "orientation", value: value.rawValue)
    }

    /// When set, it is possible to scroll through the slides by dragging them with the mouse. Default `false`.
    /// - Returns: The HTMLAttribute (`mouse-dragging`)
    static var mouseDraggin: Self {
        HTMLAttribute(name: "mouse-dragging", value: "mouse-dragging")
    }
}