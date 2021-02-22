class Card < ApplicationRecord
  has_many :favorites
  has_many :decks, through: :favorites
end
