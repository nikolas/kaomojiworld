class AddOauthAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :oauth_avatar, :string
  end
end
