class RemoveSizeFromComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :size, :float
  end
end
