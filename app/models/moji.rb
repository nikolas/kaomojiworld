class Moji < ActiveRecord::Base
  belongs_to :user
  has_many :favorites
  has_many :users, :through => favorites

  validates_length_of :content, maximum: 30
  has_many :taggings
  has_many :tags, through: :taggings

  validates_uniqueness_of :content

  attr_accessible :content, :title
  accepts_nested_attributes_for :tags
end
