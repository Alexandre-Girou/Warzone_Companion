class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :decks, dependent: :destroy
  has_many :favorites, through: :decks
  has_many :cards
  has_many :votes
  has_many :comments
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  validates :username, presence: true

  def upvoted?(card)
    votes.select { |vote| vote.status == 'upvote' }.map(&:card_id).include?(card.id)
  end

  def downvoted?(card)
    votes.select { |vote| vote.status == 'downvote' }.map(&:card_id).include?(card.id)
  end
end
