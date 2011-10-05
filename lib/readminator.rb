module Readminator
  def self.validate(readme)
    []
  end

  autoload :VERSION,    "readminator/version"
  autoload :Parsinator, "readminator/parsinator"
end
