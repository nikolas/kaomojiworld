class CreateMojis < ActiveRecord::Migration
  def change
    create_table :mojis do |t|
      t.string :content
      t.string :title

      t.timestamps
    end
  end
end
