class Parcel < ApplicationRecord
  belongs_to :order
  
  has_one :customer, through: :order

  validates :provider, presence: true
  validates :tracking, presence: true
end
