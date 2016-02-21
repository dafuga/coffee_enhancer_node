describe 'Datetime', () ->
	three_months_ago = new Date()
	three_months_ago.setMonth(three_months_ago.getMonth() - 3)
	a_year_ago = new Date()
	a_year_ago.setYear(a_year_ago.getFullYear() - 1)
	three_minutes_ago = new Date()
	three_minutes_ago.setMinutes(three_minutes_ago.getMinutes() - 3)
	time_then = new Date(2016,4, 12, 19, 15)
	that_morning = new Date(2016, 4, 12, 7, 15)
	three_months_ago_then = new Date(2016, 1, 12, 7, 15)
	
	it 'should time_then correctly to formatted_time_with_pm', () ->
    expect(time_then.formatted_time_with_pm()).toBe '7:15 p.m.'
    expect(that_morning.formatted_time_with_pm()).toBe '7:15 a.m.'

  it 'should respond correctly to formatted_time', () ->
    expect(time_then.formatted_time()).toBe '19:15'

  it 'should respond correctly to formatted_date', () ->
    expect(time_then.formatted_date()).toBe 'May 12, 2016'
    expect(three_months_ago_then.formatted_date()).toBe 'February 12, 2016'

  it 'should respond correctly to time_ago_in_words', () ->
    expect(three_months_ago.time_ago_in_words()).toBe 'over 3 months ago'
    expect(a_year_ago.time_ago_in_words()).toBe 'about a year ago'
    expect(three_minutes_ago.time_ago_in_words()).toBe 'about 3 minutes ago'