# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'lastversion'

Gem::Specification.new do |s|
  s.name        = "lastversion"
  s.version     = LastVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Marcelo Manzan"]
  s.email       = ["manzan@gmail.com"]
  s.homepage    = "https://github.com/redoc/lastversion"
  s.summary     = %q{The best way to manage your project's versioning}
  s.description = %q{LastVersion manages a project's versioning through its entire life}

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "lastversion"

  s.add_development_dependency "rspec"

  s.files              = `git ls-files`.split("\n")
  s.test_files         = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables        = %w(lastversion)
  s.default_executable = "lastversion"
  s.require_paths      = ["lib"]
end
