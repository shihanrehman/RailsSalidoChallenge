class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.decimal :price
      t.decimal :quantity

      t.timestamps null: false
    end
  end
end
