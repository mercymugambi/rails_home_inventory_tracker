class CreateReportedItems < ActiveRecord::Migration[7.0]
  def change
    create_table :reported_items do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
