class CreateCopies < ActiveRecord::Migration[5.2]
  def change
    create_table :copies do |t|
      t.text :catchphrase
      t.string :image
      t.text :presentation
      t.integer :user_id, foreign_key: true, null: false
      t.integer :odai_id, foreign_key: true, null: false
      t.timestamps
    end
  end
end
