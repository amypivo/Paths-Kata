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

  

end