class RenameTypeColumnToSeasons < ActiveRecord::Migration[6.1]
  def change
     rename_column :seasons, :type, :seasonal
  end
end
