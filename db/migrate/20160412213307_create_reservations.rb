class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string     :title
      t.boolean    :reserved?
      t.string     :checked_out
      t.date       :return
      t.timestamps null: false
    end
  end
end
