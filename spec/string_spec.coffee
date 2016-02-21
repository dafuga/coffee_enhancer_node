describe 'String', () ->
  random_string = 'random string'
  empty_string = ''
  string_number = '12.12'

  it 'should respond correctly to blank', () ->
    expect('random string'.blank()).toBe false
    expect('   '.blank()).toBe true
    expect('\n'.blank()).toBe true
    expect(''.blank()).toBe true

  it 'should respond correctly to empty', () ->
    expect('random string'.empty()).toBe false
    expect('   '.empty()).toBe true
    expect(''.empty()).toBe true

  it 'should respond correctly to present', () ->
    expect(''.present()).toBe false
    expect('random string'.present()).toBe true

  it 'should respond correctly to present', () ->
    expect('12.12'.to_f()).toBe 12.12

  it 'should respond correctly to to_i', () ->
    expect('12.12'.to_i()).toBe 12

  it 'should respond correctly to to_f', () ->
    expect('12.12'.to_f()).toBe 12.12

  it 'should respond correctly to capitalize', () ->
    expect('a title'.capitalize()).toBe 'A title'

  it 'should respond correctly to trim', () ->
    expect('    A title     '.trim()).toBe 'A title'

  it 'should respond correctly to titleize', () ->
    expect('A TITLE'.titleize()).toBe 'A Title'