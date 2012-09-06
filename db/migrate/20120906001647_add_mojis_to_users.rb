class AddMojisToUsers < ActiveRecord::Migration
  def change
    add_column :mojis, :user_id, :integer
  end
end
