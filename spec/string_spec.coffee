describe 'String', () ->
  random_string = 'random string'
  empty_string = ''
  string_number = '12.12'

  it 'should respond correctly to blank', () ->
    expect(random_string.blank()).toBe false
    expect(empty_string.blank()).toBe true

  it 'should respond correctly to empty', () ->
    expect(random_string.empty()).toBe false
    expect(empty_string.empty()).toBe true

  it 'should respond correctly to present', () ->
    expect(empty_string.present()).toBe false
    expect(random_string.present()).toBe true

  it 'should respond correctly to present', () ->
    expect(string_number.to_f()).toBe 12.12

  it 'should respond correctly to to_i', () ->
    expect(string_number.to_i()).toBe 12

  it 'should respond correctly to to_f', () ->
    expect(string_number.to_f()).toBe 12.12