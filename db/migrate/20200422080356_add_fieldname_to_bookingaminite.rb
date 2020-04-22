class AddFieldnameToBookingaminite < ActiveRecord::Migration[5.2]
  def change
    add_column :bookingaminites, :aminite_id, :integer
  end
end
