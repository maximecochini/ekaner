class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :ref
      t.string :ekan_ref
      t.date :date

      t.timestamps
    end
  end
end
