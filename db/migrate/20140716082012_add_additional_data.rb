class AddAdditionalData < ActiveRecord::Migration
  def change
  	change_column :items, :price,                 :float
  	add_column    :items, :supplier_name,         :string
  	add_column    :items, :weight,                :float
  	add_column    :items, :supplier,              :string
  	add_column    :items, :purchase_kg_usd,       :float
  	add_column    :items, :purchase_kg_rur,       :float
  	add_column    :items, :shipping_kg_usd,       :float
  	add_column    :items, :shipping_kg_rur,       :float
  	add_column    :items, :purachse_per_item_usd, :float
  	add_column    :items, :purachse_per_item_rur, :float
  	add_column    :items, :shipping_per_item_usd, :float
  	add_column    :items, :shipping_per_item_rur, :float
  	add_column    :items, :self_cost_usd,         :float
  	add_column    :items, :self_cost_rur,         :float
  	add_column    :items, :sale_cost,             :float
  	add_column    :items, :sale_cost_final,       :float
  end
end
