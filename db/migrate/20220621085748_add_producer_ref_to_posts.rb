class AddProducerRefToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :producer, null: false, foreign_key: true
  end
end
