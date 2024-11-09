import Elementary

public extension HTMLTag {
    enum SLIcon: HTMLTrait.Shoelace {
        public static let name = "sl-icon"
    }
}

public typealias SLIcon<Content: HTML> = HTMLElement<HTMLTag.SLIcon, Content>

// Should contain all the attributes defined on Shoelace's SLIcon component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/icon
public extension HTMLAttribute where Tag == HTMLTag.SLIcon {
    /// The name of the icon to draw. Available names depend on the icon library being used.
    /// - Parameter name: The name of the icon to draw. 
    /// - Returns: The HTMLAttribute (`name="(name)"`).
    static func name(_ name: String) -> Self {
        HTMLAttribute(name: "name", value: name)
    }

    /// An external URL of an SVG file. Be sure you trust the content you are including, as it will be executed as code and can result in XSS attacks.
    /// - Parameter src: An external URL of an SVG file.
    /// - Returns: The HTMLAttribute (`src="(src)"`).
    static func src(_ src: String) -> Self {
        HTMLAttribute(name: "src", value: src)
    }

    /// The name of a registered custom icon library. Default `default` (the built-in Shoelace icon set).
    /// - Parameter library: The name of a registered custom icon library.
    /// - Returns: The HTMLAttribute (`library="(library)"`).
    static func library(_ library: String) -> Self {
        HTMLAttribute(name: "library", value: library)
    }
}

extension HTMLTag.SLIcon: HTMLTrait.Attributes.label {}