class RemoveProducerToPosts < ActiveRecord::Migration[6.1]
  def change
    remove_reference :posts, :producer
  end
end
