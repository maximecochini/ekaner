class AddAddressToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :firstname, :string
    add_column :orders, :lastname, :string
    add_column :orders, :phone, :string
    add_column :orders, :email, :string
    add_column :orders, :street_address, :string
    add_column :orders, :street_address2, :string
    add_column :orders, :zipcode, :string
    add_column :orders, :country, :string
  end
end
