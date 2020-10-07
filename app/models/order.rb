class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :source

  has_many :parcels, dependent: :destroy
  has_many :sales, dependent: :destroy
  
  has_many :products, through: :sales

  validates :ref, presence: true, uniqueness: true
  validates :ekan_ref, allow_nil: true, uniqueness: true
  validates :date, presence: true

  validates :email, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :phone, presence: true
  validates :street_address, presence: true
  validates :zipcode, presence: true
  validates :country, presence: true
  
  after_initialize :init

  def init
    self.sent_to_ekan ||= false
  end

  def send_to_ekan
  end

  def send_all_pending
    Order.where(sent_to_ekan: false).each { |order| order.send_to_ekan }
  end
end
