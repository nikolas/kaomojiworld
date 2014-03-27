class MojiForm
  def initialize moji_params, user, tags
    @moji_params = moji_params
    @user = user
    @tags = tags
  end

  def save!
    moji = Moji.new @moji_params
    moji.user_id = @user.id
    @tags.each do |_, name|
      moji.tags << Tag.create(name: name)
    end
    moji.save!
  end
end
