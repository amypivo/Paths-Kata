class Pather 

  attr_reader :file_processor, :input_file, :path

  def initialize(input_file, output_file)
    @input_file = input_file
    @output_file = output_file
    @file_processor = FileProcessor.new
    @path_writer = PathWriter.new
  end

  def process_input
    file_processor.read_file(input_file)
  end

  def create_path
    str = process_input
    @path = Path.new(str)
  end

  def draw_points 
    path_writer.draw(path.points, str)
  end



end