class AddDressIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :dress_id, :integer
  end
end
