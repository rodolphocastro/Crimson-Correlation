class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :description
      t.string :data_series

      t.timestamps null: false
    end
  end
end
