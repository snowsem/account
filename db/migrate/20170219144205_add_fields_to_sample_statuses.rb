class AddFieldsToSampleStatuses < ActiveRecord::Migration[5.0]
  def change
    add_column :sample_statuses, :name, :string
    add_column :sample_statuses, :color, :string
    SampleStatus.create(:id => 0, :name => "Открыт", :color => 'text-success')
    SampleStatus.create(:id => 1,:name => "Закрыт", :color => 'text-muted')
    SampleStatus.create(:id => 2,:name => "Отклонен", :color => 'text-warning')
  end
end
