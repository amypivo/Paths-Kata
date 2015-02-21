class Pather 

  attr_reader :file_processor, :input_file

 def initialize(input_file, output_file)
  @input_file = input_file
  @output_file = output_file
  @file_processor = FileProcessor.new
 end

 def input_string
   file_processor.read_file(input_file)
 end

end