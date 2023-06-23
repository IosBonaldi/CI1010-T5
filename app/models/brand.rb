class Brand < ApplicationRecord
  validates :name, :country, presence: true
  has_many :cars, dependent: :destroy
end
