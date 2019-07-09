class CreateBaseLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :base_links do |t|
      t.string :url
      t.string :image

      t.timestamps
    end
  end
end
