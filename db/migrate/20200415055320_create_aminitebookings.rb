class CreateAminitebookings < ActiveRecord::Migration[5.2]
  def change
    create_table :aminitebookings do |t|
      t.references :user, foreign_key: true
      t.references :roomsofaminite, foreign_key: true
      t.datetime :from_time_date
      t.datetime :to_time_date
      t.boolean :vacte

      t.timestamps
    end
  end
end
