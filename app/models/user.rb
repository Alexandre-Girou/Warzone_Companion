class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :decks, dependent: :destroy
  has_many :favorites, through: :decks
  has_many :cards
  has_many :votes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def upvoted?(card)
    votes.select { |vote| vote.status == 'upvote' }.map(&:card_id).include?(card.id)
  end

  def downvoted?(card)
    votes.select { |vote| vote.status == 'downvote' }.map(&:card_id).include?(card.id)
  end
end
