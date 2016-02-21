(function() {
  describe('String', function() {
    var empty_string, random_string, string_number;
    random_string = 'random string';
    empty_string = '';
    string_number = '12.12';
    it('should respond correctly to blank', function() {
      expect('random string'.blank()).toBe(false);
      expect('   '.blank()).toBe(true);
      expect('\n'.blank()).toBe(true);
      return expect(''.blank()).toBe(true);
    });
    it('should respond correctly to empty', function() {
      expect('random string'.empty()).toBe(false);
      expect('   '.empty()).toBe(true);
      return expect(''.empty()).toBe(true);
    });
    it('should respond correctly to present', function() {
      expect(''.present()).toBe(false);
      return expect('random string'.present()).toBe(true);
    });
    it('should respond correctly to present', function() {
      return expect('12.12'.to_f()).toBe(12.12);
    });
    it('should respond correctly to to_i', function() {
      return expect('12.12'.to_i()).toBe(12);
    });
    it('should respond correctly to to_f', function() {
      return expect('12.12'.to_f()).toBe(12.12);
    });
    it('should respond correctly to capitalize', function() {
      return expect('a title'.capitalize()).toBe('A title');
    });
    it('should respond correctly to trim', function() {
      return expect('    A title     '.trim()).toBe('A title');
    });
    return it('should respond correctly to titleize', function() {
      return expect('A TITLE'.titleize()).toBe('A Title');
    });
  });

}).call(this);
