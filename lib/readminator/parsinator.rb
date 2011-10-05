require "redcarpet"


module Readminator
  class Parsinator < Redcarpet::Render::Base
    attr_reader :blocks

    def initialize(readme)
      super readme, fenced_code_blocks: true
      @blocks = []
    end

    def block_code(code, language)
      @blocks << [code, language]
    end
  end
end
