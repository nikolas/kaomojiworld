require 'spec_helper'

describe MojiForm do
  it 'saves the moji and tags' do
    user = User.create
    content = ':3'
    tags = {name: 'cool', name: 'wat'}
    moji_params = {content: content}

    puts Moji.count

    form = MojiForm.new moji_params, user, tags
    form.save!
    moji = Moji.last
    expect(moji.content).to eq content
    expect(moji.user_id).to eq user.id
    tags.each do |_,name|
      expect(moji.tags.map(&:name)).to include(name)
    end
  end
end
