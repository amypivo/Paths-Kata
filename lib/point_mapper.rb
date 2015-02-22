class PointMapper

  def initialize(path)
    @path = path
  end

  def points
    vertical_points + horizontal_points
  end 

  def vertical_points
    points = []
    point = path.start_point + path.row_length
    until point == horizontal_line_start
      points << point
      point += path.row_length
    end
    points
  end

  def horizontal_points
    points = []
    point = horizontal_line_start 
    until point == path.end_point
      points << point
      point += direction
    end
    points
  end

  def direction
    path.end_point > horizontal_line_start ? 1 : -1
  end

  def horizontal_line_start
    vertical_line_length * path.row_length + path.start_point 
  end

  def vertical_line_length
    (path.end_point / path.row_length) - (path.start_point / path.row_length)
  end

  private

  attr_reader :path
  
end