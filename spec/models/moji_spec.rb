require 'spec_helper'

describe Moji do
  it 'returns a random moji' do
    expect(Moji.random).to not_be nil
  end
end
