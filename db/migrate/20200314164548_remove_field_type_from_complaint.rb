class RemoveFieldTypeFromComplaint < ActiveRecord::Migration[5.2]
  def change
    remove_column :complaints,:type
    remove_column :complaints,:solved


  end
end
