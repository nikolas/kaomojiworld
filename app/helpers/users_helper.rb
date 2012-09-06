module UsersHelper
  def display_avatar(user)
    if user.provider.blank?
      if user.avatar_file_name
        image_tag user.avatar.url
      end
    else
      image_tag user.oauth_avatar
    end
  end
end
