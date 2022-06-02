class AddAddressToLessons < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :address, :string
  end
end
