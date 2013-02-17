class AddUrlToWorksTable < ActiveRecord::Migration
  def change
    add_column :works, :project_url, :string
  end
end
