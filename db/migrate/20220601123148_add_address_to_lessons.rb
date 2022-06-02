class AddAddressToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :address, :string
  end
end
