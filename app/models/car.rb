class Car < ApplicationRecord
  validates :model, :brand_id, presence: true
  validate :engines_presence
  belongs_to :brand
  has_and_belongs_to_many :engines
  has_one :document, dependent: :destroy

  private

  def engines_presence
    errors.add(:base, 'Must have at least one engine available') if engines.empty?
  end
end
