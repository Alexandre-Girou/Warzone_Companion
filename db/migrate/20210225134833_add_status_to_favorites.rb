class AddStatusToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :status, :boolean
  end
end
