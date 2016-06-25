class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.integer :user_id
      t.integer :age
      t.string :job
      t.integer :sex
      t.string :image

      t.timestamps null: false
    end
  end
end
