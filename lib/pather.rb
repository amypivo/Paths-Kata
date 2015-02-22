class Pather 

  attr_reader :file_processor, :input_file, :path_writer, 
              :str, :output_file            
  attr_accessor :path             

  def initialize(input_file, output_file)
    @input_file = input_file
    @output_file = output_file
    @file_processor = FileProcessor.new
    @path_writer = PathWriter.new
  end

  def process_input
    @str = file_processor.read_file(input_file)
  end

  def create_path
    @path = Path.new(str)
  end

  def draw_points! 
    @str = path_writer.draw(str, path.points)
  end

  def write_output
    file_processor.write_file(output_file, str)
  end 

  def show_the_way
    process_input
    create_path
    draw_points!
    write_output
  end
end