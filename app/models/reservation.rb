class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates :date_of_reservation, presence: true
  validates :city, presence: true
  validates :doctor_id, presence: true
  validates :user_id, presence: true

 def doctor_name
    doctor&.name
  end

  def user_name
    user&.name
  end
end
