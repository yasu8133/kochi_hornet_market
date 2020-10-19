class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.integer :path, null:false
      t.string :item, null:false
      t.timestamps
    end
  end
end
