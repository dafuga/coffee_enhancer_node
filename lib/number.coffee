## Checks if number is positive or equal to zero
Number::is_positive = ->
  @ >= 0

## Checks if number is equal to zero
Number::is_zero = ->
  -0.00000000001 <= @ <= 0.00000000001

## Checks if number is smaller or equal to zero
Number::is_negative = ->
  @ <= 0

## Converts to currency
Number::to_currency = ->
  @.toFixed(2).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

## Converts to string
Number::to_s = ->
  @.toString()

## Converts to integer
Number::to_i = ->
  parseInt(@)

## Converts to float
Number::to_f = ->
  parseFloat(@)