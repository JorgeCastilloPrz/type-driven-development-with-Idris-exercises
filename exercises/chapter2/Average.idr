module Average
-- modules are like namespaces to qualify enclosed functions.

-- export keyword makes the function exported so other modules can access to it.
export
average : String -> Double
average str = let numWords = wordCount str
                  totalLength = sum (allLengths (words str)) in
                  cast totalLength / cast numWords
                  -- indentation is quite important on Idris. It defines where
                  -- blocks start and end, since there are no begin-end keywords
                  -- neither braces.

  -- good example of local function defined thanks to where statement
  where
    wordCount : String -> Nat
    wordCount str = length (words str)

    allLengths : List String -> List Nat
    allLengths strs = map length strs
