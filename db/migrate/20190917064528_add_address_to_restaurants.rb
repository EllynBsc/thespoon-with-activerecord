class AddAddressToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :address, :string
    # method_name :table_name, :column_name, :datatype
  end
end
