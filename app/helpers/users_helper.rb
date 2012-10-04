module UsersHelper
  def display_avatar(user)
    if user.provider.blank?
      if user.avatar.present?
        image_tag user.avatar.url(:thumb)
      end
    else
      image_tag user.oauth_avatar
    end
  end
end
