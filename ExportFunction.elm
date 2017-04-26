module ExportFunction exposing (..)

-- imports are weird for Native modules
-- You import them as you would normal modules
-- but you can't alias them nor expose stuff from them
import Native.ExportFunction

-- this will be our function which returns a number plus one
functionToString : (Int -> String) -> String
functionToString = Native.ExportFunction.functionToString

functionToString2 : (Float -> String) -> String
functionToString2 = Native.ExportFunction.functionToString

functionToStringWithId : String -> (AType -> String) -> String
functionToStringWithId = Native.ExportFunction.functionToStringWithId


type AType
  = Hey
  | Ho
  | LetsGo
