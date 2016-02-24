(function() {
  describe('Array', function() {
    var empty_array, filled_array;
    filled_array = [1, 2, 3, 4];
    empty_array = [];
    it('should respond correctly to empty', function() {
      expect(filled_array.empty()).toBe(false);
      return expect(empty_array.empty()).toBe(true);
    });
    it('should respond correctly to present', function() {
      expect(filled_array.present()).toBe(true);
      return expect(empty_array.present()).toBe(false);
    });
    return it('should respond correctly to any', function() {
      expect(filled_array.any()).toBe(true);
      return expect(empty_array.any()).toBe(false);
    });
  });

}).call(this);
