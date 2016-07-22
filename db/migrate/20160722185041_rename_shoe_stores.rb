class RenameShoeStores < ActiveRecord::Migration
  def change
    rename_table(:shoe_stores, :shoes_stores)
  end
end
