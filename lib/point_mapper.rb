class PointMapper

  def initialize(path)
    @path = path
  end

  def points
    vertical_points + horizontial_points
  end

  def vertical_points
    points = []
    point = path.start_point + path.row_length
    path.vertical_line_length.times do |i|
      points << point
      point += path.row_length
    end
    @vertical_end_point = points.last
    points
  end

  def horizontial_points
    points = []
    if end_of_path > @vertical_end_point
      (@vertical_end_point+1..end_of_path-1).each { |i| points << i}
    else
      (end_of_path+1..@vertical_end_point-1).each { |i| points << i}
    end
    points
  end

  def end_of_path
    path.end_point
  end

  private 

  attr_reader :path
  
end