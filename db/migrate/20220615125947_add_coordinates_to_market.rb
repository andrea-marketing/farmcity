class AddCoordinatesToMarket < ActiveRecord::Migration[6.1]
  def change
    add_column :markets, :latitude, :float
    add_column :markets, :longitude, :float
  end
end
