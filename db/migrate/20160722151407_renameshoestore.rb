class Renameshoestore < ActiveRecord::Migration
  def change
    rename_table(:shoe_store, :shoe_stores)
  end
end
