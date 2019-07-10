class RemoveColumnFromUserlink < ActiveRecord::Migration[5.2]
  def change
    remove_column :userlinks, :image, :string
  end
end
