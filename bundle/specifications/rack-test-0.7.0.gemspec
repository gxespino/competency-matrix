# -*- encoding: utf-8 -*-
# stub: rack-test 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rack-test"
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Bryan Helmkamp"]
  s.date = "2017-07-10"
  s.description = "Rack::Test is a small, simple testing API for Rack apps. It can be used on its\nown or as a reusable starting point for Web frameworks and testing libraries\nto build on. Most of its initial functionality is an extraction of Merb 1.0's\nrequest helpers feature."
  s.email = "bryan@brynary.com"
  s.homepage = "http://github.com/rack-test/rack-test"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Simple testing API built on Rack"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, ["< 3", ">= 1.0"])
      s.add_development_dependency(%q<rake>, ["~> 12.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.6"])
      s.add_development_dependency(%q<sinatra>, ["< 3", ">= 1.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 5.1"])
      s.add_development_dependency(%q<rubocop>, ["< 0.50", ">= 0.49"])
      s.add_development_dependency(%q<codeclimate-test-reporter>, ["~> 0.6"])
      s.add_development_dependency(%q<thor>, ["~> 0.19"])
    else
      s.add_dependency(%q<rack>, ["< 3", ">= 1.0"])
      s.add_dependency(%q<rake>, ["~> 12.0"])
      s.add_dependency(%q<rspec>, ["~> 3.6"])
      s.add_dependency(%q<sinatra>, ["< 3", ">= 1.0"])
      s.add_dependency(%q<rdoc>, ["~> 5.1"])
      s.add_dependency(%q<rubocop>, ["< 0.50", ">= 0.49"])
      s.add_dependency(%q<codeclimate-test-reporter>, ["~> 0.6"])
      s.add_dependency(%q<thor>, ["~> 0.19"])
    end
  else
    s.add_dependency(%q<rack>, ["< 3", ">= 1.0"])
    s.add_dependency(%q<rake>, ["~> 12.0"])
    s.add_dependency(%q<rspec>, ["~> 3.6"])
    s.add_dependency(%q<sinatra>, ["< 3", ">= 1.0"])
    s.add_dependency(%q<rdoc>, ["~> 5.1"])
    s.add_dependency(%q<rubocop>, ["< 0.50", ">= 0.49"])
    s.add_dependency(%q<codeclimate-test-reporter>, ["~> 0.6"])
    s.add_dependency(%q<thor>, ["~> 0.19"])
  end
end
