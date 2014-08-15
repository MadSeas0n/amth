class ChangeFloatToDecimal < ActiveRecord::Migration
  def change
  	change_column :items, :weight,                :decimal, precision: 8, scale: 2
  	change_column :items, :purchase_kg_usd,       :decimal, precision: 8, scale: 2
  	change_column :items, :purchase_kg_rur,       :decimal, precision: 8, scale: 2
  	change_column :items, :shipping_kg_usd,       :decimal, precision: 8, scale: 2
  	change_column :items, :shipping_kg_rur,       :decimal, precision: 8, scale: 2
  	change_column :items, :purachse_per_item_usd, :decimal, precision: 8, scale: 2
  	change_column :items, :purachse_per_item_rur, :decimal, precision: 8, scale: 2
  	change_column :items, :shipping_per_item_usd, :decimal, precision: 8, scale: 2
  	change_column :items, :shipping_per_item_rur, :decimal, precision: 8, scale: 2
  	change_column :items, :self_cost_usd,         :decimal, precision: 8, scale: 2
  	change_column :items, :self_cost_rur,         :decimal, precision: 8, scale: 2
  	change_column :items, :sale_cost,             :decimal, precision: 8, scale: 2
  	change_column :items, :sale_cost_final,       :decimal, precision: 8, scale: 2
  end
end
