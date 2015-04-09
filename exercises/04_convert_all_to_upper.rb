def convert_all_to_upper_case(words)
  upper = []
  words.each do |word|
    upper << word.upcase
  end
  upper
end

# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#convert_all_to_upper_case' do
  it 'returns an array with all of the words turned to uppercase' do
    expect(convert_all_to_upper_case(['foo', 'bar'])).to eq(['FOO', 'BAR'])
  end

  it 'returns an empty array when given an empty array' do
    expect(convert_all_to_upper_case([])).to eq([])
  end
end
