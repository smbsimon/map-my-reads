class AddLocationToBooks < ActiveRecord::Migration
  def change
    add_column :books, :city, :string
  end
end
