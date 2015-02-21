class FileProcessor

  def read_file(input_file)
    File.read(input_file)
  end

  def write_file(output_file, str)
    File.open("#{output_file}", "w+") { |file| file.write(str) }
  end
end

