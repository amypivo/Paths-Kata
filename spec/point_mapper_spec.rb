require 'spec_helper.rb'

describe PointMapper do 

  let(:path_parser) {PathParser.new("....#.\n......\n......\n......\n.#....\n")}
  subject {PointMapper.new(path_parser)}

  describe '#vertical_points' do
    it 'return an array of points' do 
      expect(subject.vertical_points).to eq([11, 18, 25, 32])
    end  
  end

  describe '#horizontial_points' do
    it 'returns and array of points' do 
      subject.vertical_points
      expect(subject.horizontial_points).to eq([30, 31])
    end 
  end

  describe '#get_points' do
    it 'returns an array of all path points' do 
      subject.points
      expect(subject.points).to eq([11, 18, 25, 32, 30, 31])
    end
  end

end