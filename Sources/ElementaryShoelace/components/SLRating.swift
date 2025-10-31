import Elementary

public extension HTMLTag {
    enum SLRating: HTMLTrait.Shoelace {
        public static let name = "sl-rating"
    }
}

public typealias SLRating<Content: HTML> = HTMLElement<HTMLTag.SLRating, Content>

// Should contain all the attributes defined on Shoelace's SLRating component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/rating
public extension HTMLAttribute where Tag == HTMLTag.SLRating {
    /// The current rating. Default `0`.
    /// - Parameter number: The current rating.
    /// - Returns: The HTMLAttribute (`value="(number)"`)
    static func value(_ number: Int) -> Self {
        HTMLAttribute(name: "value", value: String(number))
    }

    /// The precision at which the rating will increase and decrease. For example, to allow half-star ratings, set this attribute to 0.5. Default `1`.
    /// - Parameter value: The precision at which the rating will increase and decrease.
    /// - Returns: The HTMLAttribute (`precision="(value)"`)
    static func precision(_ value: Double) -> Self {
        HTMLAttribute(name: "precision", value: String(value))
    }
}

extension HTMLTag.SLRating: HTMLTrait.Attributes.label {}
extension HTMLTag.SLRating: HTMLTrait.Attributes.max {}
extension HTMLTag.SLRating: HTMLTrait.Attributes.readonly {}
extension HTMLTag.SLRating: HTMLTrait.Attributes.disabled {}