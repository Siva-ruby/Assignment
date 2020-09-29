class Doctor < ApplicationRecord
  validates :name, presence: true
  has_many :appointment
end
