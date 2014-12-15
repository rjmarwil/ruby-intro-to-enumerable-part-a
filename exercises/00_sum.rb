def sum(numbers)
  result = 0
  numbers.each do |number|
    result = result + number
  end
  result
end

# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#sum' do
  it 'returns the sum of the given array' do
    expect(sum([1,2,3])).to eq(6)
  end

  it 'returns 0 for empty arrays' do
    expect(sum([])).to eq(0)
  end
end
