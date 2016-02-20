
## Formats datetime to 12 hour clock time
Datetime::formatted_twelve_hours = ->
  prepand = if hour >= 12 then ' PM ' else ' AM '  
  hour = if hour >= 12 then hour - 12 else hour  
  if hour == 0 and prepand == ' PM '  
    if minute == 0 and second == 0  
      hour = 12  
      prepand = ' Noon'  
    else  
      hour = 12  
      prepand = ' PM'  
  if hour == 0 and prepand == ' AM '  
    if minute == 0 and second == 0  
      hour = 12  
      prepand = ' Midnight'  
    else  
      hour = 12  
      prepand = ' AM'  
  "#{hour} : #{minute} #{prepand}"

## Formats datetime to 24 hour clock time
Datetime::formatted = ->
  prepand = if hour >= 12 then ' PM ' else ' AM '  
  hour = if hour >= 12 then hour - 12 else hour  
  if hour == 0 and prepand == ' PM '  
    if minute == 0 and second == 0  
      hour = 12  
      prepand = ' Noon'  
    else  
      hour = 12  
      prepand = ' PM'  
  if hour == 0 and prepand == ' AM '  
    if minute == 0 and second == 0  
      hour = 12  
      prepand = ' Midnight'  
    else  
      hour = 12  
      prepand = ' AM'  
  "#{hour} : #{minute}"

## Gives a string with time since timestamp
Datetime::time_ago_in_words = ->
  seconds = Math.floor((new Date() - date) / 1000)

    if seconds > 31536000 then "#{}"
      interval + " years"
    interval = Math.floor(seconds / 2592000)
    if (interval > 1) {
        return interval + " months";
    }
    interval = Math.floor(seconds / 86400);
    if (interval > 1) {
        return interval + " days";
    }
    interval = Math.floor(seconds / 3600);
    if (interval > 1) {
        return interval + " hours";
    }
    interval = Math.floor(seconds / 60);
    if (interval > 1) {
        return interval + " minutes";
    }
    switch seconds
    if seconds > 63072000 
      "Over #{seconds/31536000} years ago"
    else if seconds > 31536000 
      "Over a year ago"
    when seconds > 63072000 
      
    when seconds > 31536000 
      
    else "Less than a minute ago."

  "#{value} #{unit} ago"
