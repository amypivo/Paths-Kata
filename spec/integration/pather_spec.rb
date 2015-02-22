require 'spec_helper.rb'

describe Pather do 

  context 'when the path start point is left of the end point' do
    it 'returns the correct output' do

      input_file = File.dirname(__FILE__) + '/fixtures/input_left.txt'
      output_file = Tempfile.new('test_output.txt').path
      expected_output = File.read(File.dirname(__FILE__) + '/fixtures/expected_left.txt')
      pather = Pather.new(input_file, output_file)

      pather.show_the_way

      expect(File.read(output_file)).to eq(expected_output)
    end
  end

  context 'when the start point is directly above the end point' do
    it 'returns the correct output' do

      input_file = File.dirname(__FILE__) + '/fixtures/input_straight.txt'
      output_file = Tempfile.new('test_output.txt').path
      expected_output = File.read(File.dirname(__FILE__) + '/fixtures/expected_straight.txt')
      pather = Pather.new(input_file, output_file)

      pather.show_the_way

      expect(File.read(output_file)).to eq(expected_output)
    end
  end

  context 'when the path start point is right of the path end point' do
    it 'returns the correct output' do

      input_file = File.dirname(__FILE__) + '/fixtures/input_right.txt'
      output_file = Tempfile.new('test_output.txt').path
      expected_output = File.read(File.dirname(__FILE__) + '/fixtures/expected_right.txt')
      pather = Pather.new(input_file, output_file)

      pather.show_the_way

      expect(File.read(output_file)).to eq(expected_output)
    end
  end


end