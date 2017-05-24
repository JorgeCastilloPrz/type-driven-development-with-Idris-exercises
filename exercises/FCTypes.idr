-- This function receives a boolean and returns a type as first class citizen
-- when the input value is true, the type returned is Int, if it's false, the
-- type returned is String
StringOrInt : Bool -> Type
StringOrInt x = case x of
                    True => Int
                    False => String

-- This function receibes a boolean and the return Type is calculated from the
-- value of a function. That's possible thanks to Types as first class ctzns.
getStringOrInt : (x : Bool) -> StringOrInt x
getStringOrInt x = case x of
                    True => 94
                    False => "Ninety four"

-- The argument type is calculated from the value of the input. So it's going to
-- be Int if it is True or String if it is False. So we can do matching here
-- and if it's True we cast the Int to a String, otherwise we directly return
-- the String.
-- With other words: If the first input is True, the second input must be an Int,
-- otherwise it must be a String.
-- we are naming both inputs in the body of the function as 'x' and 'val'.
valToString : (x : Bool) -> StringOrInt x -> String
valToString x val = case x of
                    True => cast val
                    False => val
