module Main

main : IO ()
main = putStrLn 'x'
-- This is an error since putStrLn expect an string and not a char
