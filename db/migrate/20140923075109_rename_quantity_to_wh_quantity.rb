class RenameQuantityToWhQuantity < ActiveRecord::Migration
  def change
    rename_column :items, :quantity, :wh_quantity
  end
end
