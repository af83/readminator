require "redcarpet"
require "nokogiri"


module Readminator
  class Parsinator
    def self.blocks(readme)
     readme.scan(/^``` ?([^\r\n]+)?\r?\n(.+?)\r?\n```\r?$/m)
    end
  end
end
