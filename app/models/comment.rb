class Comment < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  belongs_to :card, foreign_key: "card_id"

  has_rich_text :content
end
