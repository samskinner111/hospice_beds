class Bed < ApplicationRecord
  belongs_to :hospice

  scope :get_my_beds, ->(hospice) {where("hospice_id = ?", hospice)}
end
