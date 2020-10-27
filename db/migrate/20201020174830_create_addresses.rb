class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :postal_code, null: false
      t.string :prefectures, null: false
      t.string :municipalities, null: false
      t.string :building, null: false
      t.string :phone_number
      t.string :address, null: false
      t.references :user
      t.timestamps
    end
  end
end
