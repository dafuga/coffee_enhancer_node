(function() {
  String.prototype.blank = function() {
    return !(typeof this !== "undefined" && this !== null ? this.length : void 0);
  };

  String.prototype.empty = function() {
    return !(typeof this !== "undefined" && this !== null ? this.length : void 0);
  };

  String.prototype.present = function() {
    return !!(typeof this !== "undefined" && this !== null ? this.length : void 0);
  };

  String.prototype.to_i = function() {
    return parseInt(this);
  };

  String.prototype.to_f = function() {
    return parseFloat(this);
  };

}).call(this);
