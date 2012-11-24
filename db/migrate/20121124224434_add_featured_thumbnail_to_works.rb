class AddFeaturedThumbnailToWorks < ActiveRecord::Migration
  def change
    add_column :works, :featured_thumbnail, :string
  end
end
