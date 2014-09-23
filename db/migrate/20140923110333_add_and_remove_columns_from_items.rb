class AddAndRemoveColumnsFromItems < ActiveRecord::Migration
  def change
    add_column :items, :photo, :string
    remove_column :items, :img_url
    remove_column :items, :photo_file_name
    remove_column :items, :photo_content_type
    remove_column :items, :photo_file_size
    remove_column :items, :photo_updated_at
  end
end
