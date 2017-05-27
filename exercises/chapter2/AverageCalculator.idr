module Main

-- Average method declares 2 local function definitions using the "where"
-- keyword. It uses both to calculate wordCount and allLengths from a list of
-- words. Both are used to calculate the average word length from a given
-- string.
average : (str : String) -> Double
average str = let numWords = wordCount str
                  totalLength = sum (allLengths (words str)) in
                  cast totalLength / cast numWords

    where
      wordCount : String -> Nat
      wordCount str = length (words str)

      allLengths : List String -> List Nat
      allLengths strs = map length strs

showAverage : String -> String
showAverage str = "The average word length is: " ++ show (average str) ++ "\n"

-- We request a string from the user in a loop inside the REPL
main : IO ()
main = repl "Enter a string: " showAverage
