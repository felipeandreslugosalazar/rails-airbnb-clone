class CreateLookalikes < ActiveRecord::Migration[6.0]
  def change
    create_table :lookalikes do |t|
      t.string :celeb_name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
