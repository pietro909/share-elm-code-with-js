module Main exposing (..)

import ExportFunction exposing (functionToString, functionToString2)
import Html exposing (p, text, ul, li)

awesomeFunction : Int -> String
awesomeFunction n =
  "n is " ++ (toString n)

awesomeFunctionFloat : Float -> String
awesomeFunctionFloat n =
  "n is " ++ (toString n)

main =
  ul []
    [ li [] [ p [] [ text <| functionToString awesomeFunction  ] ]
    , li [] [ p [] [ text <| functionToString2 awesomeFunctionFloat ] ]
    ]
