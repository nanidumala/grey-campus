class RemoveOrderFromLineItems < ActiveRecord::Migration[6.1]
  def change
    remove_reference :line_items, :order, null: true, foreign_key: true
  end
end
