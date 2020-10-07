class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :street_address
      t.string :street_address2
      t.string :zipcode
      t.string :country
      t.text :notes
      t.string :phone

      t.timestamps
    end
  end
end
