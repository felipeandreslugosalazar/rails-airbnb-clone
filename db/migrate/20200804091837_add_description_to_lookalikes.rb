class AddDescriptionToLookalikes < ActiveRecord::Migration[6.0]
  def change
    add_column :lookalikes, :description, :text
  end
end
