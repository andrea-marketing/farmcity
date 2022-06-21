class AddOpeningTimeToMarkets < ActiveRecord::Migration[6.1]
  def change
    add_column :markets, :opening_time, :string
  end
end
