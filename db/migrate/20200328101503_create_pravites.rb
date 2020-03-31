class CreatePravites < ActiveRecord::Migration[5.2]
  def change
    create_table :pravites do |t|
      t.string :block
      t.integer :flate
      t.string :type_of_service
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
