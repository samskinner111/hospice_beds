class Bed < ApplicationRecord
  belongs_to :hospice
  has_many :reservations

  scope :get_my_beds, ->(hospice) {where("hospice_id = ?", hospice)}
end
