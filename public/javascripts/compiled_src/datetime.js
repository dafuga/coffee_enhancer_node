(function() {
  var day_in_seconds, hour_in_seconds, minute_in_seconds, monthNames, month_in_seconds, week_in_seconds, year_in_seconds;

  monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

  year_in_seconds = 31536000;

  month_in_seconds = 2420000;

  week_in_seconds = 604800;

  day_in_seconds = 86400;

  hour_in_seconds = 3600;

  minute_in_seconds = 60;

  Date.prototype.formatted_time_with_pm = function() {
    var hour, minute, prepand;
    hour = this.getHours();
    minute = this.getMinutes();
    prepand = hour >= 12 ? 'p.m.' : 'a.m.';
    hour = hour >= 12 ? hour - 12 : hour;
    return hour + ":" + minute + " " + prepand;
  };

  Date.prototype.formatted_time = function() {
    var hour, minute;
    hour = this.getHours();
    minute = this.getMinutes();
    return hour + ":" + minute;
  };

  Date.prototype.formatted_date = function() {
    var day, monthIndex, year;
    day = this.getDate();
    monthIndex = this.getMonth();
    year = this.getFullYear();
    return monthNames[monthIndex] + " " + day + ", " + year;
  };

  Date.prototype.time_ago_in_words = function() {
    var seconds, time_now;
    time_now = new Date();
    seconds = Math.floor((time_now - this) / 1000);
    if (seconds > 2 * year_in_seconds) {
      return "over " + (Math.floor(seconds / year_in_seconds)) + " years ago";
    } else if (seconds > year_in_seconds + month_in_seconds) {
      return "over a year ago";
    } else if (seconds > year_in_seconds - month_in_seconds) {
      return "about a year ago";
    } else if (seconds > 2 * month_in_seconds) {
      return "over " + (Math.floor(seconds / month_in_seconds)) + " months ago";
    } else if (seconds > 2 * week_in_seconds) {
      return "about " + (Math.floor(seconds / week_in_seconds)) + " weeks ago";
    } else if (seconds > 2 * day_in_seconds) {
      return "about " + (Math.floor(seconds / day_in_seconds)) + " days ago";
    } else if (seconds > 2 * hour_in_seconds - 20 * minute_in_seconds) {
      return "about " + (Math.floor(seconds / hour_in_seconds)) + " hours ago";
    } else if (seconds > day_in_seconds - 10 * minute_in_seconds) {
      return "about an hour ago";
    } else if (seconds > minute_in_seconds + 30) {
      return "about " + (Math.floor(seconds / minute_in_seconds)) + " minutes ago";
    } else if (seconds > minute_in_seconds - 1) {
      return "about " + (Math.floor(seconds / minute_in_seconds)) + " minutes ago";
    } else if (seconds > 0) {
      return "less than a minute ago";
    } else {
      return "hasn't occured yet";
    }
  };

}).call(this);
