(function() {
  Array.prototype.present = function() {
    return this.length > 0;
  };

  Array.prototype.empty = function() {
    return this.length === 0;
  };

}).call(this);
