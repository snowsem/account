class AddFieldsToSampleStatus < ActiveRecord::Migration[5.0]
  def change
    add_column :samples, :status, :string, default: 0



  end
end
