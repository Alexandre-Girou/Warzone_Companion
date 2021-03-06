class Card < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "user_id"

  has_rich_text :content

  has_one_attached :photo

  has_many :favorites, dependent: :destroy
  has_many :decks, through: :favorites
  has_many :votes, dependent: :destroy
  has_many :comments

  scope :category, ->(category) { Card.where(category: category) }
  scope :level, ->(level) { Card.where(level: level) }

  validates :title, presence: true
  validates :category, presence: true
  validates :content, presence: true
  validate :level_if_tricks
  validate :text_content

  include PgSearch::Model
  pg_search_scope :search_by_word, against: %i[title content category level], using:
      { tsearch:
        { prefix:
          true } }

  def level_if_tricks
    errors.add(:level, "Should not be empty") if category == "Tricks" && level.blank?
  end

  def text_content
    errors.add(:content, "Should be longer!") if content.body.to_plain_text.length < 42
  end

  def upvotes
    votes.where(status: 'upvote').size
  end

  def downvotes
    votes.where(status: 'downvote').size
  end
end
