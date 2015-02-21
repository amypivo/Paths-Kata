require 'spec_helper.rb'
require 'tempfile'

describe FileProcessor do 
  
  let(:test_file) {File.dirname(__FILE__) + '/fixtures/test_input.txt'}
  let(:output_file) {Tempfile.new('test_output.txt').path}

  subject {FileProcessor.new}

  describe '#read_file' do
    it 'reads a file' do
      expect(subject.read_file(test_file)).to eq('This is a test.')
    end
  end

  describe '#write_file' do 
    it 'writes a string to the output file' do
      str = 'Output test string'

      subject.write_file(output_file, str)

      expect(File.read(output_file)).to eq(str)
      expect(File.exists?(output_file)).to eq(true)
    end
  end

end