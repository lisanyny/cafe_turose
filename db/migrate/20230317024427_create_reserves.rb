class CreateReserves < ActiveRecord::Migration[6.1]
  def change
    create_table :reserves do |t|
      t.integer :customer_id, null: false
      t.integer :menu_id, null: false
      t.date :date, null: false
      t.string :time, null: false
      t.integer :people, null: false
      t.string :reserve_detail, null: false
      t.string :request

      t.timestamps
    end
  end
end
