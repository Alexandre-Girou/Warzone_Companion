class RemoveContentFromCards < ActiveRecord::Migration[6.0]
  def change
    remove_column :cards, :content
  end
end
