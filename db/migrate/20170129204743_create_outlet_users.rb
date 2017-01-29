class CreateOutletUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :outlet_users do |t|

      t.timestamps
    end
  end
end
