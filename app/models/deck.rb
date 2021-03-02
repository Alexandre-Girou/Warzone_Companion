class Deck < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :cards, through: :favorites
  validates :name, presence: true, uniqueness: true
end

# has_many :cards, through: :favorites
# SELECT * FROM cards
# INNER JOIN favorites ON cards.id = favorites.card_id
# WHERE favorites.deck_id = id

# Card.joins(:favorites).where(favorites: {deck_id: id})
