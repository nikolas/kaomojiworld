module UsersHelper
  def display_avatar(user)
    if user.provider.blank?
      image_tag user.avatar
    else
      image_tag user.oauth_avatar
    end
  end
end
