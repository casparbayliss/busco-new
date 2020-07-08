class AddShopkeeperToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :shopkeeper, :boolean, default: false
  end
end
