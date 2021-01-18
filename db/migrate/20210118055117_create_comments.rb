class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.float :size
      t.string :comment
      t.references :sneaker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
