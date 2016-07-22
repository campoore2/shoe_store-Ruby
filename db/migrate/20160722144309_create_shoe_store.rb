class CreateShoeStore < ActiveRecord::Migration
  def change
    create_table(:shoe_store) do |t|
      t.column(:shoe_id, :int)
      t.column(:store_id, :int)
    end
  end
end
