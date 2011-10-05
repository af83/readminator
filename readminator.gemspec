# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'readminator/version'

Gem::Specification.new do |s|
  s.name         = "readminator"
  s.version      = Readminator::VERSION
  s.authors      = ["Bruno Michel", "Julien Boyer", "François de Metz"]
  s.email        = ["bruno.michel@af83.com", "julien.boyer@af83.com", "fdemetz@af83.com"]
  s.homepage     = "https://github.com/af83/readminator"
  s.summary      = "Improve your README"
  s.description  = "Improve your README"

  s.files        = `git ls-files lib`.split("\n")
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.add_dependency "redcarpet", "2.0.0b5"
end
