class AddFieldsToComplaint < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :solved, :boolean,default: false
    add_column :complaints, :type_of_property, :string
  end
end
