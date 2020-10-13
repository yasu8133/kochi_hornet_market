class CreateExhibitions < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibitions do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :category_id, null: false, foreign_key: true
      t.string :shopping_charges, null: false
      t.string :shopping_area, null: false
      t.string :shopping_date, null: false
      t.integer :price, null: false
      t.string :goods_status, null: false
      t.string :goods_name, null: false
      t.string :goods_demonstrate, null: false
      t.timestamps
    end
  end
end
