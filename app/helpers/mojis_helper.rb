module MojisHelper
  def random_moji_link
    moji = Moji.first(:order => "RANDOM()") #postgresql
    link_to moji.content.first(15), moji_path(moji)
  end
end
