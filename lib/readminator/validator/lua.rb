# encoding: UTF-8

module Readminator
  class Validator::Lua
    def check(code, line)
      Open3.popen3("luac -p -") do |stdin, stdout, stderr, wait|
        stdin << code
        stdin.close
        exit_status = wait.value
        return { line: line, error: stderr.read.chomp, language: "lua" } if exit_status != 0
      end
      nil
    end
  end
end
