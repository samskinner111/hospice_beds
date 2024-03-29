class AddAttributesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name,  :string
    add_column :users, :hospice_id, :integer
    add_column :users, :role,       :string, default: "hospice_nurse"      
  end
end
