class RenameSeasonColumnToDresses < ActiveRecord::Migration[6.1]
  def change
    rename_column :dresses, :season, :category
  end
end
