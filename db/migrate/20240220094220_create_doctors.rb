class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :doctor_type
      t.text :description
      t.string :image_url
      t.decimal :book_price
      t.date :book_date

      t.timestamps
    end
  end
end
