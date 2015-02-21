require 'spec_helper.rb'

describe PathWriter do
  let(:test_str) {"01234"}
  let(:path_points) {[2,3,4]}
  subject {PathWriter.new}

  describe '#write' do 
    it 'replaces string characters with *' do 
      expect(subject.write(test_str, path_points)).to eq("01***")
    end
  end

end 