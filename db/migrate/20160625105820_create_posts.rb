class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.string :image
      t.integer :category_id
      
      t.timestamps null: false
    end
  end
end
