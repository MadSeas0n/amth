class AddStoreToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :store, :string
  end
end
