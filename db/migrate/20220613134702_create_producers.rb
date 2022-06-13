class CreateProducers < ActiveRecord::Migration[6.1]
  def change
    create_table :producers do |t|
      t.string :name
      t.string :address
      t.string :producer_type
      t.text :description
      t.string :contact
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
