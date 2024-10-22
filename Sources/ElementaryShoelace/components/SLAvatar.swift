import Elementary 

public extension HTMLTag {
    enum SLAvatar: HTMLTrait.Shoelace {
        public static let name = "sl-avatar"
    }
}

public typealias SLAvatar<Content: HTML> = HTMLElement<HTMLTag.SLAvatar, Content>

// Should contain all the attributes defined on shoelaces SLAvatar component
// - that can be rendered on the server side and are not only getters
public extension HTMLAttribute where Tag == HTMLTag.SLAvatar {
    /// The image source to use for the avatar. Default `''`.
    /// - Parameter url: The url of the image.
    /// - Returns: The HTMLAttribute (`image="(value)"`)
    static func image(_ url: String) -> Self {
        HTMLAttribute(name: "image", value: url)
    }

    /// Initials to use as a fallback when no image is available (1–2 characters max recommended). Default `''`.
    /// - Parameter initials: The initials.
    /// - Returns: The HTMLAttribute (`initials="(value)"`)
    static func initials(_ initials: String) -> Self {
        HTMLAttribute(name: "initials", value: initials)
    }

    enum SLAvatarLoadingValue: String {
        case eager
        case lazy
    }

    /// Indicates how the browser should load the image. Default `eager`.
    /// - Parameter loading: The loading option (`eager` or `lazy`).
    /// - Returns: The HTMLAttribute (`loading="(value)"`)
    static func loading(_ loading: SLAvatarLoadingValue) -> Self {
        HTMLAttribute(name: "loading", value: loading.rawValue)
    }

    enum SLAvatarShapeValue: String {
        case circle
        case square
        case rounded
    }

    /// The shape of the avatar. Default `circle`.
    /// - Parameter shape: The selected shape (`circle`, `square`, `rounded`).
    /// - Returns: The HTMLAttribute (`shape="(value)"`)
    static func shape(_ shape: SLAvatarShapeValue) -> Self {
        HTMLAttribute(name: "shape", value: shape.rawValue)
    }
}

extension HTMLTag.SLAvatar: HTMLTrait.Attributes.label {}