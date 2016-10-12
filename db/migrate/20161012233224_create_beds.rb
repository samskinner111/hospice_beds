class CreateBeds < ActiveRecord::Migration[5.0]
  def change
    create_table :beds do |t|
      t.integer :hospice_id
      t.string :status
      t.string :room_type
      t.string :bed_type
      t.string :gender
      t.string :desc

      t.timestamps
    end
  end
end
