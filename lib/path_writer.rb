class PathWriter

  def draw(str, path_points)
    path_points.each { |i| str[i] = '*'}
    return str
  end

end