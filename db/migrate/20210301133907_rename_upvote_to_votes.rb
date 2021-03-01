class RenameUpvoteToVotes < ActiveRecord::Migration[6.0]
  def change
    rename_table :upvotes, :votes
    change_column :votes, :status, :string
  end
end
