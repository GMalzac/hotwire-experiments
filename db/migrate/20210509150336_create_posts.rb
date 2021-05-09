class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :username
      t.text :body
      t.integer :likes_count
      t.integer :repost_count

      t.timestamps
    end
  end
end
