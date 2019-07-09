class CreateUserLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_links do |t|
      t.integer :user_id
      t.integer :baseLink_id
      t.string :ending

      t.timestamps
    end
  end
end
