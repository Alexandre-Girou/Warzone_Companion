class Card < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "user_id"

  has_rich_text :content

  has_many :favorites, dependent: :destroy
  has_many :decks, through: :favorites

  scope :category, -> (category) { Card.where(category: category) }
  scope :level, -> (level) { Card.where(level: level) }

  include PgSearch::Model
  pg_search_scope :search_by_word,
    against: [ :title, :content, :category, :level ],
    using: {
      tsearch: { prefix: true }
  }
end
