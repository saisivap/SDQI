class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :aminite, foreign_key: true
      t.references :roomsofaminite, foreign_key: true
      t.integer :from_time
      t.integer :to_time
      t.date :date_of_the_day

      t.timestamps
    end
  end
end
