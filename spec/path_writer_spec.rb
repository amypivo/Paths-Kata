require 'spec_helper.rb'

describe PathWriter do
  let(:test_str) {"01234"}
  let(:path_points) {[]}
  subject {PathWriter.new}

  describe '#write' do 
    it 'replaces string characters with *' do 
      expect(subject.write(test_str, [2,3,4])).to eq("01***")
    end
  end

end