class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts, inverse_of: :user
  has_many :coments, inverse_of: :user
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name,
            presence: true,
            uniqueness: true,
            pool: true
end
