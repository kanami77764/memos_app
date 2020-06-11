class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :memos

  VALID_EMSIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMSIL_REGEX }, allow_blank: true

  VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
  validates :password, presence: true, length: { minimum: 6 }, format: { with: VALID_PASSWORD_REGEX}, allow_blank: true
  validates :password_confirmation, presence: true
end
