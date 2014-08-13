class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :comments
      t.string :payment_type

      t.timestamps
    end
  end
end
