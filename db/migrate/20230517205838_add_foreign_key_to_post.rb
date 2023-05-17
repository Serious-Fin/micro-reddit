class AddForeignKeyToPost < ActiveRecord::Migration[7.0]
  def up
    add_column :posts, :user_id, :foreign_key
  end

  def down
    remove_column :posts, :user_id
  end
end
