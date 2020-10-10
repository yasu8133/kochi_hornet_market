class CreateExhibitions < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibitions do |t|
      # userテーブルとカテゴリテーブルが追加されてから
      # t.references :user_id, foreign_key: true
      # t.references :category_id, foreign_key: true
      
      t.string :shipping_charges
      t.string :shipping_area
      t.string :shipping_date
      t.integer :price
      
      t.string :goods_status
      t.string :goods_name
      t.string :goods_demonstrate

      t.timestamps
    end
  end
end
