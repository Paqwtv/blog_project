class Category < ApplicationRecord
  has_and_belongs_to_many :posts
  has_and_belongs_to_many :coments

  validates :name,
            presence: true,
            uniqueness: true,
            pool: true
end
