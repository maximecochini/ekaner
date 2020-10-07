class Product < ApplicationRecord
  has_many :sales, dependent: :destroy
  
  has_many :orders, through: :sales
  has_many :users, through: :orders

  validates :sku, uniqueness: true
  validates :name, presence: true
end
