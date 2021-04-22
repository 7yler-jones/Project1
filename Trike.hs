module Expr where

type Var = String

--adjusted some of the expr to have what we need, more need added, this is where we get the formulas for lack of better word, on how to form the productions in the Grammar.y file.  The tree stuff may not be correct(4/21)

data Expr = Number Integer | Boolean Bool | And Expr Expr | Or Expr Expr | Not Expr
                    | EmptyTree | Tree Expr Expr Expr
            Var Var
 deriving Show

--I think we need more than one data type here, one for expressions and one for code?? Though I'm not 100% sure.  Will get this cleared in office hours tomorrow hopefully (4/21)

data Code = 
