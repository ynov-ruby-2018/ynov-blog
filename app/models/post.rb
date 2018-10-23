class Post < ApplicationRecord

  belongs_to :user
  belongs_to :category

  has_many :posts_tags
  has_many :tags, through: :posts_tags

  validates :title, presence: true
  
  accepts_nested_attributes_for :tags

end
