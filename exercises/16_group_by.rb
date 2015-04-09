def group_by(input, sym)
  # hash = Hash.new { [] }
  # input.each do |a|
  #   hash[a[sym]] = hash[a[sym]] << a
  # end
  # hash

  input.group_by { |a| a[sym] }
end

# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#group_by' do
  it 'returns a hash where the values are arrays of items, grouped by the given key' do
    input = [
      {x: 1, y: 6},
      {x: 5, y: 2},
      {x: 5, y: 6},
    ]

    expect(group_by(input, :x)).to eq({
      1 => [ {x: 1, y: 6} ],
      5 => [
        {x: 5, y: 2},
        {x: 5, y: 6},
      ],
    })

    expect(group_by(input, :y)).to eq({
      2 => [
        {x: 5, y: 2},
      ],
      6 => [
        {x: 1, y: 6},
        {x: 5, y: 6},
      ],
    })
  end

  it 'returns an empty hash when given an empty array' do
    expect(group_by([], :foo)).to eq({})
  end

  it 'returns nil as a key when given a hash that does not contain the given key' do
    input = [ {y: 5} ]

    expect(group_by(input, :x)).to eq({ nil => [ {y: 5} ] })
  end
end
