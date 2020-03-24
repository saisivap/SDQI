class CreateComplaints < ActiveRecord::Migration[5.2]
  def change
    create_table :complaints do |t|
      t.text :description
      t.string :type
      t.string :block
      t.integer :floor
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
