class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :item, null: false
      t.string :image_id, null: false
      t.string :introduction, null: false
      t.integer :price, null: false
      t.boolean :is_active, null: false, default: true
      t.integer :genre, null: false, default: 1

      t.timestamps
    end
  end
end
