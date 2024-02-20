require 'application_system_test_case'

class ReservationsTest < ApplicationSystemTestCase
  setup do
    @reservation = reservations(:one)
  end

  test 'visiting the index' do
    visit reservations_url
    assert_selector 'h1', text: 'Reservations'
  end

  test 'should create reservation' do
    visit reservations_url
    click_on 'New reservation'

    fill_in 'City', with: @reservation.city
    fill_in 'Date of reservation', with: @reservation.date_of_reservation
    fill_in 'Duration of booking', with: @reservation.duration_of_booking
    fill_in 'Integer', with: @reservation.integer
    click_on 'Create Reservation'

    assert_text 'Reservation was successfully created'
    click_on 'Back'
  end

  test 'should update Reservation' do
    visit reservation_url(@reservation)
    click_on 'Edit this reservation', match: :first

    fill_in 'City', with: @reservation.city
    fill_in 'Date of reservation', with: @reservation.date_of_reservation
    fill_in 'Duration of booking', with: @reservation.duration_of_booking
    fill_in 'Integer', with: @reservation.integer
    click_on 'Update Reservation'

    assert_text 'Reservation was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Reservation' do
    visit reservation_url(@reservation)
    click_on 'Destroy this reservation', match: :first

    assert_text 'Reservation was successfully destroyed'
  end
end
