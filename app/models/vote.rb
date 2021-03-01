class Vote < ApplicationRecord
  belongs_to :card
  belongs_to :user

  validates :card, uniqueness: { scope: :user }
end
