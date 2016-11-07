class Hospice < ApplicationRecord
  has_many :beds
  has_many :users

end
