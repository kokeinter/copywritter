class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id, foreign_key: true, null: false
      t.integer :copy_id, foreign_key: true, null: false

      t.timestamps

      t.index :user_id
      t.index :copy_id
      t.index [:user_id, :copy_id], unique: true
    end
  end
end
