class Card < ApplicationRecord
  belongs_to :user

  has_rich_text :content

  has_many :favorites, dependent: :destroy
  has_many :decks, through: :favorites
end
