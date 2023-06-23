class Document < ApplicationRecord
  validates :code, :car_id, presence: true
  belongs_to :car, dependent: :destroy
end
