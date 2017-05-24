module Main

main : IO ()
main = putStrLn ?greeting
-- ?greeting is a "hole", like a placeholder for a String. The type String is
-- imposed by the putStrLn function. Just a String can be provided for it.
