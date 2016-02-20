describe 'Number', () ->
  integer = 12
  negative_integer = -10
  zero = 0
  long_digit_number = 12121212.1212133

  it 'should respond correctly to is_positive', () ->
    expect(integer.is_positive()).toBe true
    expect(negative_integer.is_positive()).toBe false

  it 'should respond correctly to is_negative', () ->
    expect(integer.is_negative()).toBe false
    expect(negative_integer.is_negative()).toBe true

  it 'should respond correctly to is_zero', () ->
    expect(integer.is_zero()).toBe false
    expect(zero.is_zero()).toBe true

  it 'should respond correctly to to_currency', () ->
    expect(long_digit_number.to_currency()).toBe '12,121,212.12'

  it 'should respond correctly to to_s', () ->
    expect(integer.to_s()).toBe '12'

  it 'should respond correctly to to_i', () ->
    expect(long_digit_number.to_i()).toBe 12121212

  it 'should respond correctly to to_f', () ->
    expect(zero.to_f()).toBe 0.00