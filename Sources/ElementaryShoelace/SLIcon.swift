import Elementary

public extension HTMLTag {
    enum SLIcon: HTMLTrait.Paired {
        public static let name = "sl-icon"
        public static let _rendersInline = false // why is this needed?
    }
}

public typealias SLIcon<Content: HTML> = HTMLElement<HTMLTag.SLIcon, Content>

// Component under construction - not all attributes are implemented
public extension HTMLAttribute where Tag == HTMLTag.SLIcon {
    static func name(_ name: String) -> Self {
        HTMLAttribute(name: "name", value: name)
    }

    static func label(_ label: String) -> Self {
        HTMLAttribute(name: "label", value: label)
    }

    static func library(_ library: String) -> Self {
        HTMLAttribute(name: "library", value: library)
    }
}
