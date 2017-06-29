class CreateHotels < ActiveRecord::Migration[5.1]
  def change
    create_table :hotels do |t|
      t.string :title
      t.integer :star_rating
      t.string :breakfast
      t.text :room_desc
      t.string :price
      t.string :address
      t.integer :user_id

      t.timestamps
    end
    add_index :hotels, [:user_id, :created_at]
  end
end
