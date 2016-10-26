class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :bed_id
      t.integer :user_id
      t.date :reserve_date
      t.date :reopen_date

      t.timestamps
    end
  end
end
