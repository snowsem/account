class AddAddressAndTelephoneToUser < ActiveRecord::Migration[5.0]
  def change

    add_column :users, :address, :text
    add_column :users, :telephone, :string
  end
end
