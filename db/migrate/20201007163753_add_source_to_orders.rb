class AddSourceToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :source, null: false, foreign_key: true
  end
end
