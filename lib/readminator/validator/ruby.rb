require "open3"

module Readminator
  class Validator::Ruby
    def check(code, line)
      Open3.popen3("ruby -c") do |stdin, stdout, stderr, wait|
        stdin << code
        stdin.close
        exit_status = wait.value
        return { line: line, error: stderr.read.chomp, language: "ruby" } if exit_status != 0
      end
      nil
    end
  end
end
