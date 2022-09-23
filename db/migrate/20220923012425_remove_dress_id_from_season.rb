class RemoveDressIdFromSeason < ActiveRecord::Migration[6.1]
  def change
    remove_column :seasons, :dress_id, :integer
  end
end
