import Elementary

public extension HTMLTag {
    enum SLQRCode: HTMLTrait.Shoelace {
        public static let name = "sl-qr-code"
    }
}

public typealias SLQRCode<Content: HTML> = HTMLElement<HTMLTag.SLQRCode, Content>

// Should contain all the attributes defined on Shoelace's SLQRCode component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/format-date
public extension HTMLAttribute where Tag == HTMLTag.SLQRCode {
    /// The size of the QR code, in pixels. Default `128`.
    /// - Parameter size: The size of the QR code, in pixels.
    /// - Returns: The HTMLAttribute (`size="(value)"`)
    static func size(_ size: Int) -> Self {
        .init(name: "size", value: String(size))
    }

    /// The fill color. This can be any valid CSS color, but not a CSS custom property. Default `black`.
    /// - Parameter color: The fill color.
    /// - Returns: The HTMLAttribute (`fill="(color)"`)
    static func fill(_ color: String) -> Self {
        .init(name: "fill", value: color)
    }

    /// The background color. This can be any valid CSS color or transparent. It cannot be a CSS custom property. Default `white`.
    /// - Parameter color: The background color.
    /// - Returns: The HTMLAttribute (`background="(color)"`)
    static func background(_ color: String) -> Self {
        .init(name: "background", value: color)
    }

    /// The edge radius of each module. Must be between 0 and 0.5. Default `0`.
    /// - Parameter radius: The edge radius of each module.
    /// - Returns: The HTMLAttribute (`radius="(value)"`)
    static func radius(_ radius: Double) -> Self {
        .init(name: "radius", value: String(radius))
    }

    enum SLQRCodeErrorCorrectionValue: String {
        case L
        case M
        case Q
        case H
    }

    /// The level of error correction to use. [Learn more](https://www.qrcode.com/en/about/error_correction.html) Default `H`.
    /// - Parameter value: The level of error correction to use. See `SLQRCodeErrorCorrectionValue` for possible values.
    /// - Returns: The HTMLAttribute (`error-correction="(value)"`)
    static func errorCorrection(_ value: SLQRCodeErrorCorrectionValue) -> Self {
        .init(name: "error-correction", value: value.rawValue)
    }
}

extension HTMLTag.SLQRCode: HTMLTrait.Attributes.value {}
extension HTMLTag.SLQRCode: HTMLTrait.Attributes.label {}