import Elementary

public extension HTMLTag {
    enum SLAlert: HTMLTrait.Shoelace {
        public static let name = "sl-alert"
    }
}

public typealias SLAlert<Content: HTML> = HTMLElement<HTMLTag.SLAlert, Content>

// Should contain all the attributes defined on Shoelace's SLAlert component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/alert
public extension HTMLAttribute where Tag == HTMLTag.SLAlert {
    /// Enables a close button that allows the user to dismiss the alert. Default `false`.
    /// - Returns: The HTMLAttribute (`closable`)
    static var closable: Self {
        HTMLAttribute(name: "closable", value: nil)
    }

    enum AlertVariant: String {
        case primary
        case success
        case neutral
        case warning
        case danger
    }

    /// The alert’s theme variant. Default `primary`.
    /// - Parameter variant: The alert variant.
    /// - Returns: The HTMLAttribute (`variant="(value)"`)
    static func variant(_ variant: AlertVariant) -> Self {
        HTMLAttribute(name: "variant", value: variant.rawValue)
    }

    /// The length of time, in milliseconds, the alert will show before closing itself. If the user interacts with the alert before it closes (e.g. moves the mouse over it), the timer will restart. Defaults to Infinity, meaning the alert will not close on its own. Default `Infinity`.
    /// - Parameter duration: The duration in milliseconds.
    /// - Returns: The HTMLAttribute (`duration="(value)"`)
    static func duration(_ duration: Int) -> Self {
        HTMLAttribute(name: "duration", value: String(duration))
    }

    enum AlertCountdownValue: String {
        case rtl
        case ltr
        case undefined
    }

    /// Enables a countdown that indicates the remaining time the alert will be displayed. Typically used to indicate the remaining time before a whole app refresh. Default `-`.
    /// - Parameter countdown: The countdown value.
    /// - Returns: The HTMLAttribute (`countdown="(value)"`)
    static func countdown(_ countdown: AlertCountdownValue) -> Self {
        HTMLAttribute(name: "countdown", value: countdown.rawValue)
    }
}

extension HTMLTag.SLAlert: HTMLTrait.Attributes.shoelace.open {}