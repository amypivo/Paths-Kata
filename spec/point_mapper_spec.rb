require 'spec_helper.rb'

describe PointMapper do 

  let(:path) {Path.new("....#.\n......\n......\n......\n.#....\n")}
  subject {PointMapper.new(path)}

  describe '#vertical_points' do
    it 'return an array of points' do 
      expect(subject.vertical_points).to eq([11, 18, 25])
    end  
  end

  describe '#horizontal_points' do
    it 'returns and array of points' do 
      subject.vertical_points
      expect(subject.horizontal_points.sort).to eq([30, 31, 32])
    end 
  end

  describe "#horizontal_line_start" do 
    it 'returns the horizontal line start' do
      expect(subject.horizontal_line_start).to eq(32)
    end
  end

  describe '#points' do
    it 'returns an array of all path points' do 
      subject.points
      expect(subject.points.sort).to eq([11, 18, 25, 30, 31, 32])
    end
  end

  describe '#vertical_line_length' do 
    it 'returns the length of the vertical line' do 
      expect(subject.vertical_line_length).to eq(4  ) 
    end
  end

  describe '#direction' do 
    it 'returns the direction' do
      expect(subject.direction).to eq (-1)
    end
  end

end