class Coment < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :posts
  has_and_belongs_to_many :categories

  validates :content, presence: true
end
