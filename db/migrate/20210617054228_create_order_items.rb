class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.string :product_name
      t.integer :quantity
      t.decimal :product_price

      t.timestamps
    end
  end
end
