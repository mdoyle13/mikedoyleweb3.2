class RenameSortToPosition < ActiveRecord::Migration
  def change
    rename_column :works, :sort, :position
  end
end