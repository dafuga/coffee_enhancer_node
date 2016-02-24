coffeescript_options = {
  input: 'spec',
  output: 'public/compiled_specs',
  patterns: [%r{^spec/(.+\.(?:coffee|coffee\.md|litcoffee))$}]
}

guard 'coffeescript', coffeescript_options do
  coffeescript_options[:patterns].each { |pattern| watch(pattern) }
end

coffeescript_options = {
  input: 'lib',
  output: 'node_modules',
  patterns: [%r{^lib/(.+\.(?:coffee|coffee\.md|litcoffee))$}]
}

guard 'coffeescript', coffeescript_options do
  coffeescript_options[:patterns].each { |pattern| watch(pattern) }
end
