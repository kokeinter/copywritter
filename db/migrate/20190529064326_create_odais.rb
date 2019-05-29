class CreateOdais < ActiveRecord::Migration[5.2]
  def change
    create_table :odais do |t|
      t.text :text
      t.string :image
      t.integer :user_id, foreign_key: true, null: false

      t.timestamps
    end
  end
end
