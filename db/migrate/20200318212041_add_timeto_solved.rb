class AddTimetoSolved < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :solved_time, :timestamp
  end
end
