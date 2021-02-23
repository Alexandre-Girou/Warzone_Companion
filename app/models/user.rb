class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :decks, dependent: :destroy
  has_many :favorites, through: :decks
  has_many :cards
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
