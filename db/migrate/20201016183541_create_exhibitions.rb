class CreateExhibitions < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibitions do |t|
      t.bigint :user_id, null:false, foreign_key: true
      t.bigint :category_id, null:false, foreign_key: true
      t.string :shipping_charges, null:false
      t.string :shipping_area, null:false
      t.string :shipping_date, null:false
      t.integer :price, null:false
      t.string :goods_status, null:false
      t.string :goods_name, null:false
      t.string :goods_demonstrate, null:false

      t.timestamps
    end
  end
end
