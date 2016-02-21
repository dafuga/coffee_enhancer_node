describe 'Helpers', () ->
	null_var = null
	random_var = ''

	it 'should respond correctly to exists', () ->
    expect(exists(undefined)).toBe false
    expect(exists(null_var)).toBe false
    expect(exists(random_var)).toBe true

  it 'should respond correctly to non_existent', () ->
    expect(non_existent(undefined)).toBe true
    expect(non_existent(null_var)).toBe true
    expect(non_existent(random_var)).toBe false

  it 'should respond correctly to defined', () ->
    expect(defined(undefined)).toBe false
    expect(defined(null_var)).toBe true
    expect(defined(random_var)).toBe true

  it 'should respond correctly to not_defined', () ->
    expect(not_defined(undefined)).toBe true
    expect(not_defined(null_var)).toBe false
    expect(not_defined(random_var)).toBe false

  it 'should respond correctly to loaded', () ->
    expect(loaded(undefined)).toBe false
    expect(loaded(null_var)).toBe true
    expect(loaded(random_var)).toBe true