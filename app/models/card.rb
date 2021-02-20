class Card < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "user_id"

  has_rich_text :content

  has_many :favorites, dependent: :destroy
  has_many :decks, through: :favorites

  scope :tricks, { where(category: 'Tricks') }
  scope :weapons, { where(category: 'Weapons') }
  scope :beginner, { where(level: "Beginner") }
  scope :intermediate, { where(level: "Intermediate") }
  scope :confirmed, { where(level: "Confirmed") }
end
