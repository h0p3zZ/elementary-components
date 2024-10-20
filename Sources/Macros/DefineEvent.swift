import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public enum DefineEvent: DeclarationMacro {
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let argument = node.arguments.first?.expression,
              let eventName = argument.as(StringLiteralExprSyntax.self)?.representedLiteralValue else {
                throw MacroError.InvalidOrMissingArgument
              }

        let code = """
        public protocol \(eventName)<T> {
            associatedtype T: RawRepresentable<String> = Self
            static var \(eventName): T { get }
        }
        """

        return [DeclSyntax(stringLiteral: code)]
    }
}

@main
struct DefineEventPlugin: CompilerPlugin {
    let providingMacros: [any Macro.Type] = [
        DefineEvent.self,
    ]
}

enum MacroError: Error {
    case InvalidOrMissingArgument
}
