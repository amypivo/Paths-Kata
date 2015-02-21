class PointMapper

  attr_reader :path_parser

  def initialize(path_parser)
    @path_parser = path_parser
  end

  def points
    vertical_points + horizontial_points
  end

  def vertical_points
    points = []
    point = path_parser.start_point + path_parser.row_length
    path_parser.vertical_path_length.times do |i|
      points << point
      point += path_parser.row_length
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
    path_parser.end_point
  end
end