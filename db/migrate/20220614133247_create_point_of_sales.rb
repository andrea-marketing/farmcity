class CreatePointOfSales < ActiveRecord::Migration[6.1]
  def change
    create_table :point_of_sales do |t|
      t.references :producer, null: false, foreign_key: true
      t.references :market, null: false, foreign_key: true

      t.timestamps
    end
  end
end
