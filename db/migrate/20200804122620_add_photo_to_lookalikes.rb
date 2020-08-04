class AddPhotoToLookalikes < ActiveRecord::Migration[6.0]
  def change
    add_column :lookalikes, :photo, :string
  end
end
