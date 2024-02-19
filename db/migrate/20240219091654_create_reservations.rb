class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.string :city
      t.string :duration_of_booking
      t.string :integer
      t.date :date_of_reservation

      t.timestamps
    end
  end
end
