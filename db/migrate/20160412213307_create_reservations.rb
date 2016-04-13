class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer    :book_id
      t.boolean    :reserved
      # t.string     :checked_out
      t.datetime   :return
      t.timestamps null: false
    end
  end
end
