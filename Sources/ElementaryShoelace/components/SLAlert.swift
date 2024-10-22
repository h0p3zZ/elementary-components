import Elementary

public extension HTMLTag {
    enum SLAlert: HTMLTrait.Shoelace {
        public static let name = "sl-alert"
    }
}

public typealias SLAlert<Content: HTML> = HTMLElement<HTMLTag.SLAlert, Content>

// Should contain all the attributes defined on shoelaces SLAlert component
// - that can be rendered on the server side and are not only getters
public extension HTMLAttribute where Tag == HTMLTag.SLAlert {
    /// Indicates whether or not the alert is open. You can toggle this attribute to show and hide the alert, or you can use the `show()` and `hide()` methods and this attribute will reflect the alert’s open state. Default `false`.
    static var open: Self {
        HTMLAttribute(name: "open", value: nil)
    }

    /// Enables a close button that allows the user to dismiss the alert. Default `false`.
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
    static func duration(_ duration: Int) -> Self {
        HTMLAttribute(name: "duration", value: String(duration))
    }

    enum AlertCountdownValue: String {
        case rtl
        case ltr
        case undefined
    }

    /// Enables a countdown that indicates the remaining time the alert will be displayed. Typically used to indicate the remaining time before a whole app refresh. Default `-`.
    /// - Parameter countdown: 
    /// - Returns: 
    static func countdown(_ countdown: AlertCountdownValue) -> Self {
        HTMLAttribute(name: "countdown", value: countdown.rawValue)
    }
}