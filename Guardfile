coffeescript_options = {
  input: 'spec',
  output: 'public/javascripts/compiled_specs',
  patterns: [%r{^spec/(.+\.(?:coffee|coffee\.md|litcoffee))$}]
}

guard 'coffeescript', coffeescript_options do
  coffeescript_options[:patterns].each { |pattern| watch(pattern) }
end

coffeescript_options = {
  input: 'lib/assets/javascripts',
  output: 'public/javascripts/compiled_src',
  patterns: [%r{^lib/assets/javascripts/(.+\.(?:coffee|coffee\.md|litcoffee))$}]
}

guard 'coffeescript', coffeescript_options do
  coffeescript_options[:patterns].each { |pattern| watch(pattern) }
end
