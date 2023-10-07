class RenameTypeColumnInMovies < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :type, :media_type
  end
end
