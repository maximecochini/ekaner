class CreateParcels < ActiveRecord::Migration[6.0]
  def change
    create_table :parcels do |t|
      t.references :order, null: false, foreign_key: true
      t.string :provider
      t.string :tracking

      t.timestamps
    end
  end
end
