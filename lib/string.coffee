## Checks if string element is blank
String::blank = ->
  not @.replace(/^\s+|\s+|\n+$/g, '')?.length

String::empty = ->
  not @.replace(/^\s+|\s+|\n+$/g, '')?.length

String::present = ->
  not not @.replace(/^\s+|\s+|\n+$/g, '')?.length

## Converts to integer
String::to_i = ->
  parseInt(@)

## Converts to float
String::to_f = ->
  parseFloat(@)

## Converts the first character of string to uppercase
String::capitalize = ->
  "#{@.charAt(0).toUpperCase()}#{@.substr(1).toLowerCase()}"

String::trim = ->
	@.replace /^\s+|\s+$/g, ''

## Converts the first character of each word to uppercase
String::titleize = ->
	title = ''
	for word in @.toLowerCase().split(' ')
  	title += "#{word.capitalize()} "
  title.trim()