class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :user_id
      t.string :title
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
