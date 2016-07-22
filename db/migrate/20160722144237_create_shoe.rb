class CreateShoe < ActiveRecord::Migration
  def change
    create_table(:shoes) do |t|
      t.column(:name, :string)
    end
  end
end
