class Moji < ActiveRecord::Base
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings

  validates_uniqueness_of :content

  attr_accessible :content, :title
  accepts_nested_attributes_for :tags
end
