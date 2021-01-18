class CreateSneakers < ActiveRecord::Migration[6.0]
  def change
    create_table :sneakers do |t|
      t.string :colorway
      t.string :name
      t.string :brand
      t.float :price
      t.string :image

      t.timestamps
    end
  end
end
