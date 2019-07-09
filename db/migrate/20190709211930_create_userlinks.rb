class CreateUserlinks < ActiveRecord::Migration[5.2]
  def change
    create_table :userlinks do |t|
      t.integer :user_id
      t.integer :baselink_id
      t.string :url
      t.string :image
    end
  end
end
