class Card < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "user_id"

  has_rich_text :content

  has_many :favorites, dependent: :destroy
  has_many :decks, through: :favorites

  scope :tricks, -> { Card.where(category: 'Tricks') }
  scope :weapons, -> { Card.where(category: 'Weapons') }
  scope :beginner, -> { Card.where(level: "Beginner") }
  scope :intermediate, -> { Card.where(level: "Intermediate") }
  scope :confirmed, -> { Card.where(level: "Confirmed") }
end
