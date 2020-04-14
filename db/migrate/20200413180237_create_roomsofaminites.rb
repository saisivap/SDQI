class CreateRoomsofaminites < ActiveRecord::Migration[5.2]
  def change
    create_table :roomsofaminites do |t|
      t.string :name_of_room
      t.references :aminite, foreign_key: true

      t.timestamps
    end
  end
end
