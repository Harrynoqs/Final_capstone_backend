json.extract! doctor, :id, :name, :doctor - type, :description, :image_url, :book_price, :book - date, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
