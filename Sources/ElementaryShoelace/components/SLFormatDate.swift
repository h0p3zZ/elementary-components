import Elementary
import Foundation

public extension HTMLTag {
    enum SLFormatDate: HTMLTrait.Shoelace {
        public static let name = "sl-format-date"
    }
}

public typealias SLFormatDate<Content: HTML> = HTMLElement<HTMLTag.SLFormatDate, Content>

// Should contain all the attributes defined on Shoelace's SLFormatDate component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/format-date
public extension HTMLAttribute where Tag == HTMLTag.SLFormatDate {
    /// The date/time to format. If not set, the current date and time will be used. When passing a string, it’s strongly recommended to use the ISO 8601 format to ensure timezones are handled correctly. To convert a date to this format in JavaScript, use `date.toISOString()`. Default `new Date()`.
    /// - Parameter date: The date to format.
    /// - Returns: The HTMLAttribute (`date="(value)"`)
    static func date(_ date: Date) -> Self {
        HTMLAttribute(name: "date", value: date.ISO8601Format())
    }

    enum SLFromatDateTextValue: String {
        case long
        case short
        case narrow
    }

    /// The format for displaying the weekday.
    /// - Parameter weekday: The format for displaying the weekday. See ``SLFromatDateTextValue`` for possible values.
    /// - Returns: The HTMLAttribute (`weekday="(value)"`)
    static func weekday(_ weekday: SLFromatDateTextValue) -> Self {
        HTMLAttribute(name: "weekday", value: weekday.rawValue)
    }

    /// The format for displaying the era.
    /// - Parameter era: The format for displaying the era. See ``SLFromatDateTextValue`` for possible values. 
    /// - Returns: The HTMLAttribute (`era="(value)"`)
    static func era(_ era: SLFromatDateTextValue) -> Self {
        HTMLAttribute(name: "era", value: era.rawValue)
    }

    enum SLFormatDateNumericValue: String {
        case numeric
        case twoDigit = "2-digit"
    }

    /// The format for displaying the year.
    /// - Parameter year: The format for displaying the year. See ``SLFormatDateYearValue`` for possible values.
    /// - Returns: The HTMLAttribute (`year="(value)"`)
    static func year(_ year: SLFormatDateNumericValue) -> Self {
        HTMLAttribute(name: "year", value: year.rawValue)
    }

    enum SLFormatDateMonthValue: String {
        case numeric
        case twoDigit = "2-digit"
        case narrow
        case short
        case long
    }

    /// The format for displaying the month.
    /// - Parameter month: The format for displaying the month. See ``SLFormatDateMonthValue`` for possible values.
    /// - Returns: The HTMLAttribute (`month="(value)"`)
    static func month(_ month: SLFormatDateMonthValue) -> Self {
        HTMLAttribute(name: "month", value: month.rawValue)
    }

    /// The format for displaying the day.
    /// - Parameter day: The format for displaying the day. See ``SLFormatDateNumericValue`` for possible values.
    /// - Returns: The HTMLAttribute (`day="(value)"`)
    static func day(_ day: SLFormatDateNumericValue) -> Self {
        HTMLAttribute(name: "day", value: day.rawValue)
    }

    /// The format for displaying the hour.
    /// - Parameter hour: The format for displaying the hour. See ``SLFormatDateNumericValue`` for possible values.
    /// - Returns: The HTMLAttribute (`hour="(value)"`)
    static func hour(_ hour: SLFormatDateNumericValue) -> Self {
        HTMLAttribute(name: "hour", value: hour.rawValue)
    }

    /// The format for displaying the minute.
    /// - Parameter minute: The format for displaying the minute. See ``SLFormatDateNumericValue`` for possible values.
    /// - Returns: The HTMLAttribute (`minute="(value)"`)
    static func minute(_ minute: SLFormatDateNumericValue) -> Self {
        HTMLAttribute(name: "minute", value: minute.rawValue)
    }

    /// The format for displaying the second.
    /// - Parameter second: The format for displaying the second. See ``SLFormatDateNumericValue`` for possible values.
    /// - Returns: The HTMLAttribute (`second="(value)"`)
    static func second(_ second: SLFormatDateNumericValue) -> Self {
        HTMLAttribute(name: "second", value: second.rawValue)
    }

    enum SLFormatDateTimeZoneValue: String {
        case auto
        case UTC
        case `default`
        case off
    }

    /// The format for displaying the time.
    /// - Parameter timeZoneName: The format for displaying the time. See ``SLFormatDateTimeZoneValue`` for possible values.
    /// - Returns: The HTMLAttribute (`time-zone-name="(value)"`)	
    static func timeZoneName(_ timeZoneName: SLFormatDateTimeZoneValue) -> Self {
        HTMLAttribute(name: "time-zone-name", value: timeZoneName.rawValue)
    }

    /// The time zone to express the time in.
    /// - Parameter timeZone: The time zone to express the time in.
    /// - Returns: The HTMLAttribute (`time-zone="(value)"`)
    static func timeZone(_ timeZone: String) -> Self {
        HTMLAttribute(name: "time-zone", value: timeZone)
    }

    enum SLFormatDateHourValue: String {
        case auto
        case h12 = "12"
        case h24 = "24"
    }

    /// The format for displaying the hour.
    /// - Parameter hourFormat: The format for displaying the hour. See ``SLFormatDateHourValue`` for possible values.
    /// - Returns: The HTMLAttribute (`hour-format="(value)"`)
    static func hourFormat(_ hourFormat: SLFormatDateHourValue) -> Self {
        HTMLAttribute(name: "hour-format", value: hourFormat.rawValue)
    }
}