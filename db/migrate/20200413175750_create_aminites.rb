class CreateAminites < ActiveRecord::Migration[5.2]
  def change
    create_table :aminites do |t|
      t.string :name_of_aminite

      t.timestamps
    end
  end
end
