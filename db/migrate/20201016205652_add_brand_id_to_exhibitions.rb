class AddBrandIdToExhibitions < ActiveRecord::Migration[6.0]
  def change
    add_column :exhibitions, :brand_id, :bigint
  end
end
