class AddCityToOutlet < ActiveRecord::Migration[5.0]
  def change
    add_column :outlets, :city, :string
  end
end
