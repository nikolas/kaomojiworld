class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :moji

  validates_presence_of, :moji_id, :user_id

  attr_accessible :moji_id, :user_id
end
