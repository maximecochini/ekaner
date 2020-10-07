class AddSentEkanToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :sent_to_ekan, :boolean
  end
end
