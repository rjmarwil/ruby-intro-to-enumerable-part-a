def longest_word(words)
  if words.empty?
    a = nil
  else
    a = words[0]
    words.each do |word|
      if word.length > a.length
        a = word
      end
    end
  end
  a
end

# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#longest_word' do
  it 'returns the longest word in an array' do
    input = ['a', 'big', 'black', 'bear', 'is', 'running']

    expect(longest_word(input)).to eq('running')
  end

  it 'returns the first longest word if there are multiples' do
    input = ['fa', 'la']

    expect(longest_word(input)).to eq('fa')
  end

  it 'returns nil when given an empty array' do
    expect(longest_word([])).to eq(nil)
  end
end
