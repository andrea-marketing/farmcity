class AddCoordinatesToProducer < ActiveRecord::Migration[6.1]
  def change
    add_column :producers, :latitude, :float
    add_column :producers, :longitude, :float
  end
end
