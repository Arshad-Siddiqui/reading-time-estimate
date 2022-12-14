require "read_time_estimate"

RSpec.describe '#read_time_estimate' do
  context 'More than 0 words are given' do
    it 'converts 200 to 1' do
      result = read_time_estimate(200)
      expect(result).to eq 1
    end

    it 'converts 400 to 2' do
      result = read_time_estimate(400)
      expect(result).to eq 2
    end

    it 'converts 800 to 4' do
      result = read_time_estimate(800)
      expect(result).to eq 4
    end

    it 'converts 450 to 2.25' do
      result = read_time_estimate(450)
      expect(result).to eq 2.25
    end
  end
  
  context '0 words are given' do
    it 'returns 0' do
      expect(read_time_estimate(0)).to eq 0
    end
  end

  context 'nil is given as argument' do
    it 'throws an error' do
      expect { read_time_estimate(nil) }.to raise_error
    end
  end
end