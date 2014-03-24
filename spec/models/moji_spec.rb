require 'spec_helper'

describe Moji do
  it 'returns a random moji' do
    5.times { Moji.create content: '\(^o^)/' }
    expect(Moji.random).to_not be nil
  end
end
