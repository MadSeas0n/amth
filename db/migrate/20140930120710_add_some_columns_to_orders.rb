class AddSomeColumnsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :order_items, :string
    add_column :orders, :order_lcodes, :string
    add_column :orders, :order_suppliers, :string
  end
end
