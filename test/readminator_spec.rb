#!/usr/bin/env ruby
# encoding: utf-8

require_relative 'test_helper'
require "minitest/autorun"

describe Readminator do

  it "validate a simple readme" do
    Readminator.validate("#plop").must_equal []
  end

  it "validate a readme with code and one error" do
    readme = <<EOF
```ruby
plop = 'roger
```
EOF
    Readminator.validate(readme).must_equal [{"line" => "1", "error" => ""}]
  end
end
