#!/usr/bin/env ruby
# encoding: utf-8

require_relative 'test_helper'
require "minitest/autorun"

describe Readminator do
  it "ensure we have a good README" do
    readme = File.expand_path(File.join(File.dirname(__FILE__), '..', 'README.md'))
    Readminator.validate(File.read(readme)).must_equal []
  end

  Dir[File.expand_path(File.join(File.dirname(__FILE__), 'fixtures/**/*.rb'))].sort.each do |path|
    name = File.basename path, '.rb'
    dir = File.dirname path
    md_file = "#{File.join(dir, File.basename(path, '.rb'))}.md"
    it "validate #{name}" do
      Readminator.validate(File.read(md_file)).must_equal eval(File.read path), name
    end
  end
end
