module Readminator
  class Parsinator
    def self.blocks(readme)
      blocks = readme.scan(/^``` ?([^\r\n]+)?\r?\n(.+?)\r?\n```\r?$/m)
      lines  = readme.split("\n")
      blocks.map do |(language, code)|
        line = code.split("\n", 2).first
        [lines.index(line), language, code]
      end
    end
  end
end
