module MojisHelper
  def random_moji_link
    moji = Moji.random
    link_to moji.content.first(15), moji_path(moji) if moji
  end

  def tweet_text moji
    if moji.user.provider == "twitter"
      "#{moji.content} - by @#{moji.user.username}"
    else
      "#{moji.content} - by #{moji.user.username}"
    end
  end

  def display_tags tags
  end
end
