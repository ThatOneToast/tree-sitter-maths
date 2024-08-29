import XCTest
import SwiftTreeSitter
import TreeSitterMathsLangGrammer

final class TreeSitterMathsLangGrammerTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_maths_lang_grammer())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading MathsLangGrammer grammar")
    }
}
