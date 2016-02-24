## Checks if array or string element is present
Array::present = ->
  @.length > 0

## Checks if array element is empty
Array::empty = ->
  @.length == 0

## Checks if array element is empty
Array::any = ->
  @.present()
