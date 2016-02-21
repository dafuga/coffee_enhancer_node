(function() {
  describe('Number', function() {
    var integer, long_digit_number, negative_integer, zero;
    integer = 12;
    negative_integer = -10;
    zero = 0;
    long_digit_number = 12121212.1212133;
    it('should respond correctly to is_positive', function() {
      expect(integer.is_positive()).toBe(true);
      return expect(negative_integer.is_positive()).toBe(false);
    });
    it('should respond correctly to is_negative', function() {
      expect(integer.is_negative()).toBe(false);
      return expect(negative_integer.is_negative()).toBe(true);
    });
    it('should respond correctly to is_zero', function() {
      expect(integer.is_zero()).toBe(false);
      return expect(zero.is_zero()).toBe(true);
    });
    it('should respond correctly to to_currency', function() {
      return expect(long_digit_number.to_currency()).toBe('12,121,212.12');
    });
    it('should respond correctly to to_s', function() {
      return expect(integer.to_s()).toBe('12');
    });
    it('should respond correctly to to_i', function() {
      return expect(long_digit_number.to_i()).toBe(12121212);
    });
    return it('should respond correctly to to_f', function() {
      return expect(zero.to_f()).toBe(0.00);
    });
  });

}).call(this);
