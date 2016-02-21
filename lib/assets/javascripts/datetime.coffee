monthNames = [
  "January", "February", "March",
  "April", "May", "June", "July",
  "August", "September", "October",
  "November", "December"
]

year_in_seconds = 31536000
month_in_seconds = 2420000
week_in_seconds = 604800
day_in_seconds = 86400
hour_in_seconds = 3600
minute_in_seconds = 60

## Formats time to 12 hour clock time
Date::formatted_time_with_pm = ->
  hour = @getHours()
  minute = @getMinutes()
  prepand = if hour >= 12 then 'p.m.' else 'a.m.'  
  hour = if hour >= 12 then hour - 12 else hour  
  "#{hour}:#{minute} #{prepand}"

## Formats time to 24 hour clock time
Date::formatted_time = ->
  hour = @getHours()
  minute = @getMinutes()
  "#{hour}:#{minute}"

## Formats date to 24 hour clock time
Date::formatted_date = ->
  day = @getDate()
  monthIndex = @getMonth()
  year = @getFullYear()
  "#{monthNames[monthIndex]} #{day}, #{year}"

## Gives a string with time since timestamp
Date::time_ago_in_words = ->
  time_now = new Date()
  seconds = Math.floor((time_now - @) / 1000)
  if  seconds > 2*year_in_seconds
    "over #{Math.floor(seconds/year_in_seconds)} years ago"
  else if seconds > year_in_seconds + month_in_seconds
    "over a year ago"
  else if seconds > year_in_seconds - month_in_seconds 
    "about a year ago"
  else if seconds > 2*month_in_seconds 
    "over #{Math.floor(seconds/month_in_seconds)} months ago"
  else if seconds > 2*week_in_seconds
    "about #{Math.floor(seconds/week_in_seconds)} weeks ago"
  else if seconds > 2*day_in_seconds
    "about #{Math.floor(seconds/day_in_seconds)} days ago"
  else if seconds > 2*hour_in_seconds - 20*minute_in_seconds
    "about #{Math.floor(seconds/hour_in_seconds)} hours ago"
  else if seconds > day_in_seconds - 10*minute_in_seconds
    "about an hour ago"
  else if seconds > minute_in_seconds + 30
    "about #{Math.floor(seconds/minute_in_seconds)} minutes ago"
  else if seconds > minute_in_seconds - 1
    "about #{Math.floor(seconds/minute_in_seconds)} minutes ago"
  else if seconds > 0
    "less than a minute ago"
  else "hasn't occured yet"
