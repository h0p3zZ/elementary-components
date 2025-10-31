import Elementary

public extension HTMLTag {
    enum SLPopup: HTMLTrait.Shoelace {
        public static let name = "sl-popup"
    }
}

public typealias SLPopup<Content: HTML> = HTMLElement<HTMLTag.SLPopup, Content>

// Should contain all the attributes defined on Shoelace's SLPopup component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/popup
public extension HTMLAttribute where Tag == HTMLTag.SLPopup {
    /// A reference to the internal popup container. Useful for animating and styling the popup with JavaScript.
    /// - Parameter popup: The HTMLElement that pops up.
    /// - Returns: The HTMLAttribute (`popup="(value)"`)
    static func popup(_ popup: some HTML) -> Self {
        .init(name: "popup", value: popup.render())
    }

    /// The element the popup will be anchored to. If the anchor lives outside of the popup, you can provide the anchor element `id`. If the anchor lives inside the popup, use the anchor slot instead.
    /// - Parameter anchor: The HTMLElement that the popup will be anchored to.
    /// - Returns: The HTMLAttribute (`anchor="(value)"`)
    static func anchor(_ id: String) -> Self {
        .init(name: "anchor", value: id)
    }

    enum SLPopupPlacemetValue: String {
        case top
        case topStart = "top-start"
        case topEnd = "top-end"
        case bottom
        case bottomStart = "bottom-start"
        case bottomEnd = "bottom-end"
        case right
        case rightStart = "right-start"
        case rightEnd = "right-end"
        case left
        case leftStart = "left-start"
        case leftEnd = "left-end"
    }

    /// The preferred placement of the popup. Note that the actual placement will vary as configured to keep the panel inside of the viewport. Default `top`.
    /// - Parameter placement: The placement of the popup. See ``SLPopupPlacemetValue`` for possible values.
    /// - Returns: The HTMLAttribute (`placement="(value)"`)
    static func placement(_ placement: SLPopupPlacemetValue) -> Self {
        .init(name: "placement", value: placement.rawValue)
    }

    enum StrategyValue: String {
        case absolute
        case fixed
    }

    /// Determines how the popup is positioned. The `absolute` strategy works well in most cases, but if overflow is clipped, using a `fixed` position strategy can often workaround it.
    /// - Parameter strategy: The strategy of the popup (`absolute` or `fixed`).
    /// - Returns: The HTMLAttribute (`strategy="(value)"`)
    static func strategy(_ strategy: StrategyValue) -> Self {
        .init(name: "strategy", value: strategy.rawValue)
    }

    /// Determines how the popup is positioned. The absolute strategy works well in most cases, but if overflow is clipped, using a fixed position strategy can often workaround it. Default `0`.
    /// - Parameter distance: The distance in pixels.
    /// - Returns: The HTMLAttribute (`distance="(value)"`)
    static func distance(_ distance: Int) -> Self {
        .init(name: "distance", value: String(distance))
    }

    /// The distance in pixels from which to offset the panel along its anchor. Default `0`.
    /// - Parameter skidding: The distance in pixels.
    /// - Returns: The HTMLAttribute (`skidding="(value)"`)
    static func skidding(_ skidding: Int) -> Self {
        .init(name: "skidding", value: String(skidding))
    }

    /// Attaches an arrow to the popup. The arrow’s size and color can be customized using the `--arrow-size` and `--arrow-color` custom properties. For additional customizations, you can also target the arrow using `::part(arrow)` in your stylesheet.
    /// - Returns: The HTMLAttribute (`arrow`)
    static var arrow: Self {
        .init(name: "arrow", value: nil)
    }

    enum SLPopupArrowPlacementValue: String {
        case start
        case end
        case center
        case anchor
    }

    /// The placement of the arrow. The default is anchor, which will align the arrow as close to the center of the anchor as possible, considering available space and arrow-padding. A value of start, end, or center will align the arrow to the start, end, or center of the popover instead. Default `anchor`.
    /// - Parameter arrowPlacement: The placement of the arrow. See ``SLPopupArrowPlacementValue`` for possible values.
    /// - Returns: The HTMLAttribute (`arrow-placement="(value)"`)
    static func arrowPlacement(_ arrowPlacement: SLPopupArrowPlacementValue) -> Self {
        .init(name: "arrow-placement", value: arrowPlacement.rawValue)
    }

    /// The amount of padding between the arrow and the edges of the popup. If the popup has a border-radius, for example, this will prevent it from overflowing the corners. Default `10`.
    /// - Parameter arrowPadding: The padding in pixels.
    /// - Returns: The HTMLAttribute (`arrow-padding="(value)"`)
    static func arrowPadding(_ arrowPadding: Int) -> Self {
        .init(name: "arrow-padding", value: String(arrowPadding))
    }

    /// When set, placement of the popup will flip to the opposite site to keep it in view. You can use flipFallbackPlacements to further configure how the fallback placement is determined.
    /// - Returns: The HTMLAttribute (`flip`)
    static var flip: Self {
        .init(name: "flip", value: nil)
    }

    /// If the preferred placement doesn’t fit, popup will be tested in these fallback placements until one fits. Must be a string of any number of placements separated by a space, e.g. “top bottom left”. If no placement fits, the flip fallback strategy will be used instead.
    /// - Returns: The HTMLAttribute (`flip-fallback-placements`)
    static var flipFallbackPlacements: Self {
        .init(name: "flip-fallback-placements", value: nil)
    }

    enum SLPopupFlipFallbackStrategyValue: String {
        case bestFit = "best-fit"
        case initial
    }

    /// When neither the preferred placement nor the fallback placements fit, this value will be used to determine whether the popup should be positioned using the best available fit based on available space or as it was initially preferred. Default `best-fit`.
    /// - Parameter flipFallbackStrategy: The strategy of the flip fallback (`best-fit` or `initial`).
    /// - Returns: The HTMLAttribute (`flip-fallback-strategy="(value)"`)
    static func flipFallbackStrategy(_ flipFallbackStrategy: SLPopupFlipFallbackStrategyValue) -> Self {
        .init(name: "flip-fallback-strategy", value: flipFallbackStrategy.rawValue)
    }

    /// The flip boundary describes clipping element(s) that overflow will be checked relative to when flipping. By default, the boundary includes overflow ancestors that will cause the element to be clipped. If needed, you can change the boundary by passing a reference to one or more elements to this property.
    /// - Parameter boundaryElements: The HTMLElements that are the boundary.
    /// - Returns: The HTMLAttribute (`flip-boundary="(value)"`)
    static func flipBoundary(_ boundaryElements: any HTML...) -> Self {
        .init(name: "flip-boundary", value: boundaryElements.map { $0.render() }.joined(separator: " "))
    }

    /// The amount of padding, in pixels, to exceed before the flip behavior will occur. Default `0`.
    /// - Parameter flipPadding: The padding in pixels.
    /// - Returns: The HTMLAttribute (`flip-padding="(value)"`)
    static func flipPadding(_ flipPadding: Int) -> Self {
        .init(name: "flip-padding", value: String(flipPadding))
    }

    /// Moves the popup along the axis to keep it in view when clipped.
    /// - Returns: The HTMLAttribute (`shift`)
    static var shift: Self {
        .init(name: "shift", value: nil)
    }

    /// The shift boundary describes clipping element(s) that overflow will be checked relative to when shifting. By default, the boundary includes overflow ancestors that will cause the element to be clipped. If needed, you can change the boundary by passing a reference to one or more elements to this property.
    /// - Parameter boundaryElements: The HTMLElements that are the boundary.
    /// - Returns: The HTMLAttribute (`shift-boundary="(value)"`)
    static func shiftBoundary(_ boundaryElements: any HTML...) -> Self {
        .init(name: "shift-boundary", value: boundaryElements.map { $0.render() }.joined(separator: " "))
    }

    /// The amount of padding, in pixels, to exceed before the shift behavior will occur. Default `0`.
    /// - Parameter shiftPadding: The padding in pixels.
    /// - Returns: The HTMLAttribute (`shift-padding="(value)"`)
    static func shiftPadding(_ shiftPadding: Int) -> Self {
        .init(name: "shift-padding", value: String(shiftPadding))
    }

    enum SLPopupAutoSizeVAlue: String {
        case horizontal
        case vertical
        case both
    }

    /// When set, this will cause the popup to automatically resize itself to prevent it from overflowing.
    /// - Parameter autoSize: The auto size value (`horizontal`, `vertical` or `both`).
    /// - Returns: The HTMLAttribute (`auto-size="(value)"`)
    static func autoSize(_ autoSize: SLPopupAutoSizeVAlue) -> Self {
        .init(name: "auto-size", value: autoSize.rawValue)
    }

    enum SLPopupSyncValue: String {
        case width
        case height
        case both
    }

    /// Syncs the popup’s width or height to that of the anchor element.
    /// - Parameter sync: The sync value (`width`, `height` or `both`).
    /// - Returns: The HTMLAttribute (`sync="(value)"`)
    static func sync(_ sync: SLPopupSyncValue) -> Self {
        .init(name: "sync", value: sync.rawValue)
    }

    /// The auto-size boundary describes clipping element(s) that overflow will be checked relative to when resizing. By default, the boundary includes overflow ancestors that will cause the element to be clipped. If needed, you can change the boundary by passing a reference to one or more elements to this property.
    /// - Parameter boundaryElements: The HTMLElements that are the boundary.
    /// - Returns: The HTMLAttribute (`auto-size-boundary="(value)"`)
    static func autoSizeBoundary(_ boundaryElements: any HTML...) -> Self {
        .init(name: "auto-size-boundary", value: boundaryElements.map { $0.render() }.joined(separator: " "))
    }

    /// The amount of padding, in pixels, to exceed before the auto-size behavior will occur. Default `0`.
    /// - Parameter autoSizePadding: The padding in pixels.
    /// - Returns: The HTMLAttribute (`auto-size-padding="(value)"`)
    static func autoSizePadding(_ autoSizePadding: Int) -> Self {
        .init(name: "auto-size-padding", value: String(autoSizePadding))
    }

    /// When a gap exists between the anchor and the popup element, this option will add a “hover bridge” that fills the gap using an invisible element. This makes listening for events such as mouseenter and mouseleave more sane because the pointer never technically leaves the element. The hover bridge will only be drawn when the popover is active.
    /// - Returns: The HTMLAttribute (`hover-bridge`)
    static var hoverBridge: Self {
        .init(name: "hover-bridge", value: nil)
    }
}

extension HTMLTag.SLPopup: HTMLTrait.Attributes.shoelace.active {}