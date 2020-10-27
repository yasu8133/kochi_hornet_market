class RenameExhibitionsIdColumnToExhibitionId < ActiveRecord::Migration[6.0]
  def change
    rename_column :images, :exhibitions_id, :exhibition_id
  end
end
