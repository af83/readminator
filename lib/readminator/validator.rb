require "readminator/validator/default"

module Readminator
  class Validator
    def self.for(language)
      if File.exists?(File.expand_path "../validator/#{language}.rb", __FILE__)
        require "readminator/validator/#{language}"
        Validator.const_get(language.capitalize).new
      else
        Validator::Default.new
      end
    end

  end
end
