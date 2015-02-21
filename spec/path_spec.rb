require 'spec_helper.rb'

describe Path do 
  subject {Path.new("...#\n....\n..#.")}

  describe '#start_point' do 
    it 'returns the index of the path starting point' do
      expect(subject.start_point).to eq(3)
    end
  end

  describe '#end_point' do
    it 'returns the index of the path ending point' do
      expect(subject.end_point).to eq(12)
    end
  end

  describe '#vertical_length' do 
    it 'returns the length of the vertical path' do 
      expect(subject.vertical_path_length).to eq(2) 
    end
  end

  describe '#row_length' do 
    it 'returns the length of each row' do
      expect(subject.row_length).to eq(5)
    end
  end

  describe '#points' do 
    it 'uses point mapper to return a string' do 
      expect(subject.point_mapper).to receive(:points)
      subject.points
    end
  end

end