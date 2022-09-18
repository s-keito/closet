class CreateDresses < ActiveRecord::Migration[6.1]
  def change
    create_table :dresses do |t|
      t.integer :user_id
      t.integer :category_id
      t.text :caption
      t.integer :season

      t.timestamps
    end
  end
end
