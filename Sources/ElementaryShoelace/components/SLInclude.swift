import Elementary

public extension HTMLTag {
    enum SLInclude: HTMLTrait.Shoelace {
        public static let name = "sl-include"
    }
}

public typealias SLInclude<Content: HTML> = HTMLElement<HTMLTag.SLInclude, Content>

// Should contain all the attributes defined on Shoelace's SLInclude component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/include
public extension HTMLAttribute where Tag == HTMLTag.SLInclude {
    enum SLIncludeModeValue: String {
        case cors
        case noCors = "no-cors"
        case sameOrigin = "same-origin"
    }

    /// The fetch mode to use. Default `cors`.
    /// - Parameter mode: The fetch mode to use (`cors`, `no-cors`, `same-origin`).
    /// - Returns: The HTMLAttribute (`mode="(value)"`)
    static func mode(_ mode: SLIncludeModeValue) -> Self {
        HTMLAttribute(name: "mode", value: mode.rawValue)
    }

    /// Allows included scripts to be executed. Be sure you trust the content you are including as it will be executed as code and can result in XSS attacks.
    /// - Returns: The HTMLAttribute (`allow-scripts`)
    static var allowScripts: Self {
        HTMLAttribute(name: "allow-scripts", value: nil)
    }
}

extension HTMLTag.SLInclude: HTMLTrait.Attributes.src {}