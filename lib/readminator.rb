module Readminator
  def validate(readme)
    errors = []
    blocks = Parsinator.new(readme).blocks
    blocks.each do |(code,language)|
      errors << { line: 1, error: code }
    end
    errors
  end
  module_function :validate

  autoload :Parsinator, "readminator/parsinator"
  autoload :VERSION,    "readminator/version"
end
