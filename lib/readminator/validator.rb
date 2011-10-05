require "open3"

module Readminator
  class Validator
    def self.for(language)
      Validator::Ruby.new
    end

    class Ruby
      def check(code)
        Open3.popen3("ruby -c") do |stdin, stdout, stderr, wait|
          stdin << code
          stdin.close
          exit_status = wait.value
          return { line: 1, error: stderr.read.chomp, language: "ruby" } if exit_status != 0
        end
        nil
      end
    end
  end
end
