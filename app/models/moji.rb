class Moji < ActiveRecord::Base
  attr_accessible :content, :title

  belongs_to :user

  validates_length_of :content, maximum: 30
end
