describe 'Array', () ->
  filled_array = [1,2,3,4]
  empty_array = []

  it 'should respond correctly to empty', () ->
    expect(filled_array.empty()).toBe false
    expect(empty_array.empty()).toBe true

  it 'should respond correctly to present', () ->
    expect(filled_array.present()).toBe true
    expect(empty_array.present()).toBe false

  it 'should respond correctly to any', () ->
    expect(filled_array.any()).toBe true
    expect(empty_array.any()).toBe false