class Moji < ActiveRecord::Base
  belongs_to :user
  has_many :favorites
  has_many :users, :through => :favorites

  validates_presence_of :content
  validates_length_of :content, maximum: 30
  has_many :taggings
  has_many :tags, through: :taggings

  validates_uniqueness_of :content

  def self.random
    self.limit(1).order("RANDOM()").first #postgresql
  end
end
