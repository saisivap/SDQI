class CreateBookingaminites < ActiveRecord::Migration[5.2]
  def change
    create_table :bookingaminites do |t|
      t.references :user, foreign_key: true
      t.references :roomsofaminite, foreign_key: true
      t.date :booking_date
      t.integer :timing

      t.timestamps
    end
  end
end
