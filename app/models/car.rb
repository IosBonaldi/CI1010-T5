class Car < ApplicationRecord
  belongs_to :brand
  has_and_belongs_to_many :engines
  has_one :document
end
