require "visualize_ruby"

filename = ARGV[0]
puts "Reading code from `#{filename}`"
ruby_code = File.open(filename)

results = VisualizeRuby::Builder.new(ruby_code: ruby_code).build
VisualizeRuby::Graphviz.new(results).to_graph(path: "/app/#{filename.sub(".rb", ".png")}")
