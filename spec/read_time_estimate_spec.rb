require "read_time_estimate"

RSpec.describe '#read_time_estimate' do
  context 'More than 0 words are given' do
  it 'converts 200 to 1' do
    result = read_time_estimate(200)
    expect(result).to eq 1
  end
  end
end