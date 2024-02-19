class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :doctor
  
    validates :date_of_reservation, presence: true
    validates :city, presence: true
  
    def doctor_name
      doctor&.name
    end
end
