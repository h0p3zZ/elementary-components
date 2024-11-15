import Elementary

public extension HTMLTag {
    enum SLFormatNumber: HTMLTrait.Shoelace {
        public static let name = "sl-format-number"
    }
}

public typealias SLFormatNumber<Content: HTML> = HTMLElement<HTMLTag.SLFormatNumber, Content>

// Should contain all the attributes defined on Shoelace's SLFormatNumber component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/format-number
public extension HTMLAttribute where Tag == HTMLTag.SLFormatNumber {
    /// The number to format. Default `0`.
    /// - Parameter value: The number to format.
    /// - Returns: The HTMLAttribute (`value="(value)"`)
    static func value(_ value: Int) -> Self {
        HTMLAttribute(name: "value", value: String(value))
    }

    enum SLFormatNumberTypeValue: String {
        case currency
        case decimal
        case percent
    }

    ///	The formatting style to use. Default `decimal`.
    /// - Parameter type: The formatting style to use. (`currency`, `decimal`, `percent`)
    /// - Returns: The HTMLAttribute (`type="(value)"`)
    static func type(_ type: SLFormatNumberTypeValue) -> Self {
        HTMLAttribute(name: "type", value: type.rawValue)
    }

    /// Turns off grouping separators.
    /// - Returns: The HTMLAttribute (`no-grouping`)
    static var noGrouping: Self {
        HTMLAttribute(name: "no-grouping", value: nil)
    }

    /// 	The (ISO 4217)[https://en.wikipedia.org/wiki/ISO_4217] currency code to use when formatting. Default `USD`.
    /// - Parameter currency: The currency code to use when formatting.
    /// - Returns: The HTMLAttribute (`currency="(value)"`)
    static func currency(_ currency: String) -> Self {
        HTMLAttribute(name: "currency", value: currency)
    }

    enum SLFormatNumberCurrencyDisplayValue: String {
        case symbol
        case narrowSymbol
        case code
        case name
    }

    /// How to display the currency. Default `symbol`.
    /// - Parameter currencyDisplay: How to display the currency. See ``SLFormatNumberCurrencyDisplayValue`` for possible values.
    /// - Returns: The HTMLAttribute (`currency-display="(value)"`)
    static func currencyDisplay(_ currencyDisplay: SLFormatNumberCurrencyDisplayValue) -> Self {
        HTMLAttribute(name: "currency-display", value: currencyDisplay.rawValue)
    }

    /// The minimum number of integer digits to use.
    /// - Parameter minimumIntegerDigits: The minimum number of integer digits to use (1–21).
    /// - Returns: The HTMLAttribute (`minimum-integer-digits="(value)"`)
    static func minimumIntegerDigits(_ minimumIntegerDigits: Int) -> Self {
        HTMLAttribute(name: "minimum-integer-digits", value: String(minimumIntegerDigits))
    }

    /// The minimum number of fraction digits to use.
    /// - Parameter minimumFractionDigits: The minimum number of fraction digits to use. (0–20).
    /// - Returns: The HTMLAttribute (`minimum-fraction-digits="(value)"`)
    static func minimumFractionDigits(_ minimumFractionDigits: Int) -> Self {
        HTMLAttribute(name: "minimum-fraction-digits", value: String(minimumFractionDigits))
    }

    /// The maximum number of fraction digits to use.
    /// - Parameter maximumFractionDigits: The maximum number of fraction digits to use. (0–20).
    /// - Returns: The HTMLAttribute (`maximum-fraction-digits="(value)"`)
    static func maximumFractionDigits(_ maximumFractionDigits: Int) -> Self {
        HTMLAttribute(name: "maximum-fraction-digits", value: String(maximumFractionDigits))
    }

    /// The minimum number of significant digits to use.
    /// - Parameter minimumSignificantDigits: The minimum number of significant digits to use. (1–21).
    /// - Returns: The HTMLAttribute (`minimum-significant-digits="(value)"`)
    static func minimumSignificantDigits(_ minimumSignificantDigits: Int) -> Self {
        HTMLAttribute(name: "minimum-significant-digits", value: String(minimumSignificantDigits))
    }

    /// The maximum number of significant digits to use.
    /// - Parameter maximumSignificantDigits: The maximum number of significant digits to use. (1–21).
    /// - Returns: The HTMLAttribute (`maximum-significant-digits="(value)"`)
    static func maximumSignificantDigits(_ maximumSignificantDigits: Int) -> Self {
        HTMLAttribute(name: "maximum-significant-digits", value: String(maximumSignificantDigits))
    }
}

