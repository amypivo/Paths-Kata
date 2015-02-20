class FileProcessor
  attr_reader :input_file, :output_file

  def initialize(input_file, output_file)
    @input_file = input_file
    @output_file = output_file
  end

  def read_file
    File.read(self.input_file)
  end

  def write_file(str)
    File.open("#{output_file}", "w+") { |file| file.write(str) }
  end
end

