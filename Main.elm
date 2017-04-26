module Main exposing (..)

import ExportFunction as EF
import ExportFunction exposing (functionToString, functionToString2, functionToStringWithId)
import Html exposing (p, text, ul, li)

awesomeFunction : Int -> String
awesomeFunction n =
  "n is " ++ (toString n)

awesomeFunctionFloat : Float -> String
awesomeFunctionFloat n =
  "n is " ++ (toString n)

fn : EF.AType -> String
fn t =
  case t of
    EF.Hey ->
      "hey"
    EF.Ho ->
      "ho"
    EF.LetsGo ->
      "leeeeeet's goooooooo!!!"

main =
  ul []
    [ li [] [ p [] [ text <| functionToString awesomeFunction  ] ]
    , li [] [ p [] [ text <| functionToString2 awesomeFunctionFloat ] ]
    , li [] [ p [] [ text <| functionToStringWithId "handleAType" fn ] ]
    , li [] [ p [] [ text <| toString awesomeFunctionFloat ] ]
    ]
