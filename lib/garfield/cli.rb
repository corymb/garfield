require 'thor'

module Garfield
  class GuardfileGenerator < Thor
    desc 'generate', 'Generates Guardfile'
    def generate()
      extension = Garfield.get_file_count('rb') < Garfield.get_file_count('py') ? 'py' : 'rb'
      test_string = Garfield.get_test_string(extension)
      Garfield.write_guardfile(extension, test_string)
    end
  end
end
