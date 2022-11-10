# Run `rake freeagent.gemspec` to update the gemspec.

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "free_agent/version"

Gem::Specification.new do |s|
  s.name = "freeagent"
  s.version = FreeAgent::VERSION
  s.authors = ["David Georgiou"]
  s.email = ["david@websprung.com"]
  s.summary = "Ruby bindings for FreeAgent API."
  s.description = "Ruby bindings for FreeAgent API. FreeAgent APIs can be found here: https://dev.freeagent.com/docs"
  s.homepage = "https://github.com/tolbkni/freeagent.rb"
  s.license = "MIT"

  s.files = `git ls-files -z`.split("\x0")
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.required_ruby_version = ">= 2.4"

  s.add_dependency "faraday", "~> 1.7"
  s.add_dependency "faraday_middleware", "~> 1.1"
end
