class CreateBaselinks < ActiveRecord::Migration[5.2]
  def change
    create_table :baselinks do |t|
      t.string :url
      t.string :image
    end
  end
end
