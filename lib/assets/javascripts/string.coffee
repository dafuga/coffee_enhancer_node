## Checks if string element is blank
String::blank = ->
  not @?.length

String::empty = ->
  not @?.length

String::present = ->
  not not @?.length

## Converts to integer
String::to_i = ->
  parseInt(@)

## Converts to float
String::to_f = ->
  parseFloat(@)