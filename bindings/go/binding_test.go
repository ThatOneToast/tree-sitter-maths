package tree_sitter_maths_lang_grammer_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_maths_lang_grammer "github.com/tree-sitter/tree-sitter-maths_lang_grammer/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_maths_lang_grammer.Language())
	if language == nil {
		t.Errorf("Error loading MathsLangGrammer grammar")
	}
}
