import Elementary

public extension HTMLTag {
    enum SLDialog: HTMLTrait.Shoelace {
        public static let name = "sl-dialog"
    }
}

public typealias SLDialog<Content: HTML> = HTMLElement<HTMLTag.SLDialog, Content>

// Should contain all the attributes defined on Shoelace's SLDialog component
// - that can be rendered on the server side and are not only getters
// - for further info see https://shoelace.style/components/dialog
public extension HTMLAttribute where Tag == HTMLTag.SLDialog {
    /// 	The dialog’s label as displayed in the header. You should always include a relevant label even when using no-header, as it is required for proper accessibility. If you need to display HTML, use the label slot instead. Default ``.
    /// - Parameter label: The vlaue of the label.
    /// - Returns: The HTMLAttribute (`label="(value)"`)
    static func label(_ label: String) -> Self {
        HTMLAttribute(name: "label", value: label)
    }

    /// Disables the header. This will also remove the default close button, so please ensure you provide an easy, accessible way for users to dismiss the dialog. Default `false`.
    /// - Returns: The HTMLAttribute (`no-header`)
    static var noHeader: Self {
        HTMLAttribute(name: "no-header", value: nil)
    }

    
}

extension HTMLTag.SLDialog: HTMLTrait.Attributes.shoelace.open {}