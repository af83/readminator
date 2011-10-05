require "open3"

module Readminator
  class Validator::Coffeescript
    def check(code, line)
      Open3.popen3("coffee -c -s") do |stdin, stdout, stderr, wait|
        stdin << code
        stdin.close
        exit_status = wait.value
        return { line: line, error: stderr.read.split(/\r|\n/, 2).first, language: "coffeescript" } if exit_status != 0
      end
      nil
    end
  end
end
