class ChangeFloatScale < ActiveRecord::Migration
  def change
  	remove_column :items, :price,	 :float
  	change_column :items, :weight,                :float, precision: 8, scale: 2
  	change_column :items, :purchase_kg_usd,       :float, precision: 8, scale: 2
  	change_column :items, :purchase_kg_rur,       :float, precision: 8, scale: 2
  	change_column :items, :shipping_kg_usd,       :float, precision: 8, scale: 2
  	change_column :items, :shipping_kg_rur,       :float, precision: 8, scale: 2
  	change_column :items, :purachse_per_item_usd, :float, precision: 8, scale: 2
  	change_column :items, :purachse_per_item_rur, :float, precision: 8, scale: 2
  	change_column :items, :shipping_per_item_usd, :float, precision: 8, scale: 2
  	change_column :items, :shipping_per_item_rur, :float, precision: 8, scale: 2
  	change_column :items, :self_cost_usd,         :float, precision: 8, scale: 2
  	change_column :items, :self_cost_rur,         :float, precision: 8, scale: 2
  	change_column :items, :sale_cost,             :float, precision: 8, scale: 2
  	change_column :items, :sale_cost_final,       :float, precision: 8, scale: 2
  end
end
