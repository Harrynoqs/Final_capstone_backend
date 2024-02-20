json.extract! reservation, :id, :city, :duration_of_booking, :date_of_reservation, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
