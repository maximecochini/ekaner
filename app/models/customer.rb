class Customer < ApplicationRecord
  has_many :orders
  
  has_many :parcels, through: :orders

  validates :email, presence: true, uniqueness: true
  validates :firstname, presence: true
  validates :lastname, presence: true
end
