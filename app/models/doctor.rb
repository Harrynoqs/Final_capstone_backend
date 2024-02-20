class Doctor < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  validates :name, presence: true
  validates :image_url, presence: true
  validates :doctor - type, presence: true
  validates :city, presence: true
end
