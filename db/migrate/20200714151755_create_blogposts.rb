class CreateBlogposts < ActiveRecord::Migration[6.0]
  def change
    create_table :blogposts do |t|
      t.string :name
      t.text :contents
      t.date :publish_date

      t.timestamps
    end
  end
end
