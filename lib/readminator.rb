module Readminator
  def validate(readme)
    errors = []
    blocks = Parsinator.blocks(readme)
    blocks.each do |(line, language, code)|
      validator = Validator.for(language)
      errors << validator.check(code, line)
    end
    errors.compact
  end
  module_function :validate

  autoload :Parsinator, "readminator/parsinator"
  autoload :Validator,  "readminator/validator"
  autoload :VERSION,    "readminator/version"
end
