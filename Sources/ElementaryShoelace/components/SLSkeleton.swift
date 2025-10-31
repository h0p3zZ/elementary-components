import Elementary

public extension HTMLTag {
    enum SLSkeleton: HTMLTrait.Shoelace {
        public static let name = "sl-skeleton"
    }
}

public typealias SLSkeleton<Content: HTML> = HTMLElement<HTMLTag.SLSkeleton, Content>

// Should contain all the attributes defined on Shoelace's SLSkeleton component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/skeleton
public extension HTMLAttribute where Tag == HTMLTag.SLSkeleton {
    enum SLSkeletonEffectValue: String {
        case pulse
        case sheen
        case none
    }

    /// Determines which effect the skeleton will use. Default `none`.
    /// - Parameter value: The effect the skeleton will use (`pulse`, `sheen`, `none`).
    /// - Returns: The HTMLAttribute (`effect="(value)"`)
    static func effect(_ value: SLSkeletonEffectValue) -> Self {
        HTMLAttribute(name: "effect", value: value.rawValue)
    }
}