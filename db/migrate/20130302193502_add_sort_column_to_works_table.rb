class AddSortColumnToWorksTable < ActiveRecord::Migration
  def change
    add_column :works, :sort, :integer
  end
end
