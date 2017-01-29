class AddNameFullnameAddressToOutlet < ActiveRecord::Migration[5.0]
  def change
    add_column :outlets, :full_name, :string
    add_column :outlets, :name, :string
    add_column :outlets, :address, :string
  end
end
