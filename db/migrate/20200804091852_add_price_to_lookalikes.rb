class AddPriceToLookalikes < ActiveRecord::Migration[6.0]
  def change
    add_column :lookalikes, :price, :integer
  end
end
