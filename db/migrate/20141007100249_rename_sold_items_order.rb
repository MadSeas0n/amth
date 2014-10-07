class RenameSoldItemsOrder < ActiveRecord::Migration
  def change
    rename_column :sold_items, :order, :order_number
  end
end
