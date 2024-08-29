import XCTest
import SwiftTreeSitter
import TreeSitterMathsLangGrammar

final class TreeSitterMathsLangGrammarTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_maths_lang_grammar())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading MathsLangGrammar grammar")
    }
}
