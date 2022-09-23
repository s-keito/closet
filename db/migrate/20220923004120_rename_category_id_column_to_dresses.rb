class RenameCategoryIdColumnToDresses < ActiveRecord::Migration[6.1]
  def change
    rename_column :dresses, :category_id, :season_id
  end
end
