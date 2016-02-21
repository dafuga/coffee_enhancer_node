(function() {
  window.non_existent = function(variable) {
    return variable === void 0 || variable === null;
  };

  window.exists = function(variable) {
    return !non_existent(variable);
  };

  window.defined = function(variable) {
    return variable !== void 0;
  };

  window.not_defined = function(variable) {
    return variable === void 0;
  };

  window.loaded = function(variable) {
    return defined(variable);
  };

}).call(this);
