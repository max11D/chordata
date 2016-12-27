# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "chordata.rb"

Gem::Specification.new do |s|
	s.name        = "chordata"
	s.version     = Chordata::VERSION
	s.authors     = ["Maksim Mikityanskiy"]
	s.email       = ["maksim@enchanteddiamonds.com"]
	s.homepage    = "https://github.com/jniamehr/chordata"
	s.summary     = "Extension to convert hash key case"

	s.required_ruby_version = '>= 1.9.2'

	s.files         = `git ls-files`.split("\n")
	# s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
	s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
	s.require_paths = ["lib"]

	# Development Dependencies
	# s.add_development_dependency "rspec", "~>  2.6"
end