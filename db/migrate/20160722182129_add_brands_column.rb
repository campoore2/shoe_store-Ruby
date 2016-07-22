class AddBrandsColumn < ActiveRecord::Migration
  def change
    add_column(:shoe_stores, :brands, :string)
  end
end
