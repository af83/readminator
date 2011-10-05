module Readminator
  def validate(readme)
    errors = []
    blocks = Parsinator.blocks(readme)
    $stderr.puts blocks.inspect
    blocks.each do |(language, code)|
      errors << { line: 1, error: code }
    end
    errors
  end
  module_function :validate

  autoload :Parsinator, "readminator/parsinator"
  autoload :VERSION,    "readminator/version"
end
