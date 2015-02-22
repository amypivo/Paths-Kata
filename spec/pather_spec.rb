require 'spec_helper.rb'

describe Pather do 

  let(:test_file) {File.dirname(__FILE__) + '/fixtures/test_input.txt'}
  let(:output_file) {Tempfile.new('test_output.txt').path}
  subject {Pather.new(test_file, output_file)}

  describe "#process_input" do 
    it 'returns a file string from FileProcessor' do 
      expect(subject.file_processor).to receive(:read_file).with(test_file)
      subject.process_input
    end
  end

  describe "#create_path" do 
    it 'creates a path' do 
      subject.create_path
      expect(subject.path).to be_instance_of(Path)
    end
  end

  describe "#draw_points" do 
    it 'tells the writer to draw points' do
      subject.path = double(Path)
      allow(subject.path).to receive(:points) 
      expect(subject.path_writer).to receive(:draw)
      subject.draw_points!
    end
  end

  describe "#draw_points" do 
    it 'tells the FileProcessor to write a file' do
      expect(subject.file_processor).to receive(:write_file)
      subject.write_output
    end
  end

  #this is the worst name
  describe "#show_the_way" do 
    it 'calls methods to process io, transform it and write it' do
      expect(subject).to receive(:process_input)
      expect(subject).to receive(:create_path)
      expect(subject).to receive(:draw_points!)
      expect(subject).to receive(:write_output)
      subject.show_the_way
    end
  end

end