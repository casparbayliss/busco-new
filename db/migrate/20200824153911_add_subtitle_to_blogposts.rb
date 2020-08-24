class AddSubtitleToBlogposts < ActiveRecord::Migration[6.0]
  def change
    add_column :blogposts, :subtitle, :text
  end
end
