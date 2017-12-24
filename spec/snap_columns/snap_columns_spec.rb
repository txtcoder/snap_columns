require 'spec_helper'

RSpec.describe SnapColumns, '#get' do
  it 'should order input' do
    expect(SnapColumns.get(['c', 'b', 'a'])).to eq([['a'], ['b'], ['c']])
  end

  it 'should return an empty 3 columns matrix with no words' do
    expect(SnapColumns.get([])).to eq([[], [], []])
  end

  it 'should return a 3 column matrix with a single word' do
    expect(SnapColumns.get(['a'])).to eq([['a'], [], []])
  end

  it 'should return a 3 column matrix with two words' do
    expect(SnapColumns.get(['a', 'b'])).to eq([['a'], ['b'], []])
  end

  it 'should return a 3 column matrix with three words' do
    expect(SnapColumns.get(['a', 'b', 'c'])).to eq([['a'], ['b'], ['c']])
  end

  it 'should return an evenly splitted matrix with more three words' do
    expect(SnapColumns.get(['a', 'b', 'c', 'd'])).to eq([['a', 'b'], ['c'], ['d']])
    expect(SnapColumns.get(['a', 'b', 'c', 'd', 'e'])).to eq([['a', 'b'], ['c', 'd'], ['e']])
    expect(SnapColumns.get(['a', 'b', 'c', 'd', 'e', 'f'])).to eq([['a', 'b'], ['c', 'd'], ['e', 'f']])
    expect(SnapColumns.get(['a', 'b', 'c', 'd', 'e', 'f', 'g'])).to eq([['a', 'b', 'c'], ['d', 'e'], ['f', 'g']])
  end
end
