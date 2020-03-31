class CreateShareds < ActiveRecord::Migration[5.2]
  def change
    create_table :shareds do |t|
      t.string :block
      t.integer :floor
      t.string :type_of_service
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
