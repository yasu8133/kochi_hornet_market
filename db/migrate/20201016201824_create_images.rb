class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.bigint :exhibitions_id, null:false, foreign_key: true
      t.string :image, null:false

      t.timestamps
    end
  end
end
