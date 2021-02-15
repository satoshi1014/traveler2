class User < ApplicationRecord
  has_one_attached :image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many  :spots, dependent: :destroy
  has_many :comments
  validates :name, presence: true
  validates :from, presence: true
  validates :age, presence: true
  validates :image, presence: true
end
