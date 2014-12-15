def max(numbers)
  result = nil
  numbers.each do |number|
    result = number if result.nil? || number > result
  end
  result
end

# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#max' do
  it 'returns highest number in the array' do
    expect(max([1,2,3])).to eq(3)
    expect(max([10, 10])).to eq(10)
  end

  it 'returns nil for empty arrays' do
    expect(max([])).to eq(nil)
  end
end
