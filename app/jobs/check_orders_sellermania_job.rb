class CheckOrdersSellermaniaJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    Sellermania.make_orders!
  end
end
