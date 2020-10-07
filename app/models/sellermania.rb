class Sellermania
  def self.get_orders
  end

  def self.make_orders!
    orders = Sellermania.get_orders

    orders.each do |o|
      # Create Order
      order = Order.new

      # Attach source
      order.source = Source.find_by(name: o[:source])

      # Defines order delivery details
      order.ref = o[:ref]
      order.ekan_ref = o[:ekan_ref]
      order.date = o[:date]
      order.email = o[:email]
      order.firstname = o[:firstname]
      order.lastname = o[:lastname]
      order.phone = o[:phone]
      order.street_address = o[:street_address]
      order.street_address2 = o[:street_address2]
      order.zipcode = o[:zipcode]
      order.country = o[:country]

      # Attach customer
      # Checks if exists in DB or creates new
      order.customer = Customer.find_by(email: order.email)
      order.customer = Customer.create!(email: order.email, firstname: order.firstname, lastname: order.lastname) if order.customer.nil?

      order.save
      
      # Attach products (create sales)
      o[:products].each do |p|
        # Checks if exists in DB or creates new
        product = Product.find_by(sku: p[:sku])
        product = Product.create!(sku: p[:sku], name: p[:name]) if product.nil?

        # Create the sale
        sale.create!(product: product, order: order)
      end
    end

    Order.send_all_pending
  end
end
