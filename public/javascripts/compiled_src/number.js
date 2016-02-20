(function() {
  Number.prototype.is_positive = function() {
    return this >= 0;
  };

  Number.prototype.is_zero = function() {
    return (-0.00000000001 <= this && this <= 0.00000000001);
  };

  Number.prototype.is_negative = function() {
    return this <= 0;
  };

  Number.prototype.to_currency = function() {
    return this.toFixed(2).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  };

  Number.prototype.to_s = function() {
    return this.toString();
  };

  Number.prototype.to_i = function() {
    return parseInt(this);
  };

  Number.prototype.to_f = function() {
    return parseFloat(this);
  };

}).call(this);
