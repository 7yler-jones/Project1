{
module Tokens where
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]
-- working on some of the tokens here, removed some we didnt need and 
-- inserted some that we do.  Some more need added, and need to 
-- clarify a bit with some (4/21)

tokens :-

  $white+                       ;
  "--".*                        ;
  "{"                           { \s -> TokenLBrace }
  "}"                           { \s -> TokenRBrace }
  "tt"                        { \s -> TokenTrue }
  "ff"                       { \s -> TokenFalse }  
  "if"                          { \s -> TokenIf }  
  "else"                        { \s -> TokenElse }
  "&&"                          { \s -> TokenAnd }
  "||"                          { \s -> TokenOr }
  "!"                           { \s -> TokenNeg

  $alpha [$alpha $digit \_ \']* { \s -> TokenSym s }
  $digit+                       { \s -> TokenNum $ read s }  

{

-- The token type:
data Token = TokenLet
           | TokenSym String
           | TokenNum Integer           
           | TokenLPBrace
           | TokenRBrace
           | TokenIf
           | TokenElse
           | TokenTrue
           | TokenFalse
	   | TokenAnd
	   | TokenOr
	   | TokenNeg
           deriving (Eq,Show)

scanTokens = alexScanTokens

}
