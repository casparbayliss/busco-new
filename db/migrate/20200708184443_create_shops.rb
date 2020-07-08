class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :address

      t.timestamps
    end
  end
end
