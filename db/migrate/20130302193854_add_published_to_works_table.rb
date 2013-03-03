class AddPublishedToWorksTable < ActiveRecord::Migration
  def change
    add_column :works, :published, :boolean
  end
end
