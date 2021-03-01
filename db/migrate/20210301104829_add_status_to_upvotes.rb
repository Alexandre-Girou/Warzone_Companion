class AddStatusToUpvotes < ActiveRecord::Migration[6.0]
  def change
    add_column :upvotes, :status, :boolean
  end
end
