class CreateSoldItems < ActiveRecord::Migration
  def change
    create_table :sold_items do |t|
      t.string  :title
      t.string  :lcode
      t.decimal :price
      t.string  :order
      t.string  :supplier

      t.timestamps
    end
  end
end
