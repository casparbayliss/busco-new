class AddSubheadingToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :subheading, :string
  end
end
