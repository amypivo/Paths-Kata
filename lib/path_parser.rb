class PathParser

  attr_reader :str

  def initialize(str)
    @str = str
  end

  def start_point 
    str.index('#')
  end

  def end_point
    str.rindex('#')
  end

  def row_length
    str.index("\n") + 1
  end

  def vertical_path_length
    (end_point / row_length) - (start_point / row_length)
  end
end