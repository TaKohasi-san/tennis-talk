class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :tennis_age, :integer
    add_column :users, :area, :string
    add_column :users, :like_player, :string
    add_column :users, :message, :string
  end
end
