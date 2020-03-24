class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.text :description
      t.references :complaint, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
