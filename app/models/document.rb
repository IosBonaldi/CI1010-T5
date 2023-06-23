class Document < ApplicationRecord
  belongs_to :car, dependent: :destroy
end
