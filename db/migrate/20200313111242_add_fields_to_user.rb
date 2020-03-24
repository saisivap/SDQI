class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :block, :string
    add_column :users, :flate, :int
    add_column :users, :admin, :boolean ,default: false
    add_column :users, :role, :string ,default: "register"
  end
end
