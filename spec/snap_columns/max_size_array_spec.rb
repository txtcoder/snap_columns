require 'spec_helper'

RSpec.describe SnapColumns::MaxSizeArray, '#max_size' do
  it 'should return the max size on an empty array' do
    expect(SnapColumns::MaxSizeArray.new([]).max_size).to eq(0)
  end

  it 'should return the max size on a single string' do
    expect(SnapColumns::MaxSizeArray.new(['hey']).max_size).to eq(3)
  end

  it 'should return the max size on a string array' do
    expect(SnapColumns::MaxSizeArray.new(['a', 'hey!', 'b']).max_size).to eq(4)
  end
end
