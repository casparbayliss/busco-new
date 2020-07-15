class AddUserIdToBlogposts < ActiveRecord::Migration[6.0]
  def change
    add_column :blogposts, :user_id, :integer
  end
end
