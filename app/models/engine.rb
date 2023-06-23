class Engine < ApplicationRecord
  validates :code, :displacement, :horsepower, presence: true
  has_and_belongs_to_many :cars
end
