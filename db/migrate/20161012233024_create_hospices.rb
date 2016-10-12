class CreateHospices < ActiveRecord::Migration[5.0]
  def change
    create_table :hospices do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :main_phone
      t.string :fax
      t.string :referral_phone
      t.text :description
      t.boolean :bed_owner

      t.timestamps
    end
  end
end
