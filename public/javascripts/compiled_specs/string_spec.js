(function() {
  describe('String', function() {
    var empty_string, random_string, string_number;
    random_string = 'random string';
    empty_string = '';
    string_number = '12.12';
    it('should respond correctly to blank', function() {
      expect(random_string.blank()).toBe(false);
      return expect(empty_string.blank()).toBe(true);
    });
    it('should respond correctly to empty', function() {
      expect(random_string.empty()).toBe(false);
      return expect(empty_string.empty()).toBe(true);
    });
    it('should respond correctly to present', function() {
      expect(empty_string.present()).toBe(false);
      return expect(random_string.present()).toBe(true);
    });
    it('should respond correctly to present', function() {
      return expect(string_number.to_f()).toBe(12.12);
    });
    it('should respond correctly to to_i', function() {
      return expect(string_number.to_i()).toBe(12);
    });
    return it('should respond correctly to to_f', function() {
      return expect(string_number.to_f()).toBe(12.12);
    });
  });

}).call(this);
