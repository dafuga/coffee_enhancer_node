(function() {
  describe('Helpers', function() {
    var null_var, random_var;
    null_var = null;
    random_var = '';
    it('should respond correctly to exists', function() {
      expect(exists(void 0)).toBe(false);
      expect(exists(null_var)).toBe(false);
      return expect(exists(random_var)).toBe(true);
    });
    it('should respond correctly to non_existent', function() {
      expect(non_existent(void 0)).toBe(true);
      expect(non_existent(null_var)).toBe(true);
      return expect(non_existent(random_var)).toBe(false);
    });
    it('should respond correctly to defined', function() {
      expect(defined(void 0)).toBe(false);
      expect(defined(null_var)).toBe(true);
      return expect(defined(random_var)).toBe(true);
    });
    it('should respond correctly to not_defined', function() {
      expect(not_defined(void 0)).toBe(true);
      expect(not_defined(null_var)).toBe(false);
      return expect(not_defined(random_var)).toBe(false);
    });
    return it('should respond correctly to loaded', function() {
      expect(loaded(void 0)).toBe(false);
      expect(loaded(null_var)).toBe(true);
      return expect(loaded(random_var)).toBe(true);
    });
  });

}).call(this);
