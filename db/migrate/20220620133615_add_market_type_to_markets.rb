class AddMarketTypeToMarkets < ActiveRecord::Migration[6.1]
  def change
    add_column :markets, :market_type, :string
  end
end
