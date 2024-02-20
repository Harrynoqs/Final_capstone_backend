require 'application_system_test_case'

class DoctorsTest < ApplicationSystemTestCase
  setup do
    @doctor = doctors(:one)
  end

  test 'visiting the index' do
    visit doctors_url
    assert_selector 'h1', text: 'Doctors'
  end

  test 'should create doctor' do
    visit doctors_url
    click_on 'New doctor'

    fill_in 'Book-date', with: @doctor.book - date
    fill_in 'Book price', with: @doctor.book_price
    fill_in 'Description', with: @doctor.description
    fill_in 'Doctor-type', with: @doctor.doctor - type
    fill_in 'Image url', with: @doctor.image_url
    fill_in 'Name', with: @doctor.name
    click_on 'Create Doctor'

    assert_text 'Doctor was successfully created'
    click_on 'Back'
  end

  test 'should update Doctor' do
    visit doctor_url(@doctor)
    click_on 'Edit this doctor', match: :first

    fill_in 'Book-date', with: @doctor.book - date
    fill_in 'Book price', with: @doctor.book_price
    fill_in 'Description', with: @doctor.description
    fill_in 'Doctor-type', with: @doctor.doctor - type
    fill_in 'Image url', with: @doctor.image_url
    fill_in 'Name', with: @doctor.name
    click_on 'Update Doctor'

    assert_text 'Doctor was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Doctor' do
    visit doctor_url(@doctor)
    click_on 'Destroy this doctor', match: :first

    assert_text 'Doctor was successfully destroyed'
  end
end
