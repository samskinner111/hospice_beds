class Hospice < ApplicationRecord
  has_many :beds
  has_many :users

  #scope :getMyHospice, ->(usr) { where("user_id = ?", usr) }  #AP
end
