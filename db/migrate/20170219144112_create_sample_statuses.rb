class CreateSampleStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :sample_statuses do |t|

      t.timestamps

    end
  end
end
