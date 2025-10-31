import Elementary

public extension HTMLTag {
    enum SLRelativeTime: HTMLTrait.Shoelace {
        public static let name = "sl-relative-time"
    }
}

public typealias SLRelativeTime<Content: HTML> = HTMLElement<HTMLTag.SLRelativeTime, Content>

// Should contain all the attributes defined on Shoelace's SLRelativeTime component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/relative-time
public extension HTMLAttribute where Tag == HTMLTag.SLRelativeTime {
    enum SLRelativeTimeFormatValue: String {
        case long
        case short
        case narrow
    }

    /// The formatting style to use. Default `long`.
    /// - Parameter format: The formatting style to use (`long`, `short`, `narrow`).
    /// - Returns: The HTMLAttribute (`format="(value)"`)
    static func format(_ format: SLRelativeTimeFormatValue) -> Self {
        HTMLAttribute(name: "format", value: format.rawValue)
    }

    enum SLRelativeTimeNumericValue: String {
        case always
        case auto
    }

    /// When auto, values such as “yesterday” and “tomorrow” will be shown when possible. When always, values such as “1 day ago” and “in 1 day” will be shown. Default `auto`.
    /// - Parameter numeric: The numeric value to use (`always`, `auto`).
    /// - Returns: The HTMLAttribute (`numeric="(value)"`)
    static func numeric(_ numeric: SLRelativeTimeNumericValue) -> Self {
        HTMLAttribute(name: "numeric", value: numeric.rawValue)
    }

    /// Keep the displayed value up to date as time passes.
    /// - Returns: The HTMLAttribute (`sync`)
    static var sync: Self {
        HTMLAttribute(name: "sync", value: nil)
    }
}

extension HTMLTag.SLRelativeTime: HTMLTrait.Attributes.shoelace.date {}