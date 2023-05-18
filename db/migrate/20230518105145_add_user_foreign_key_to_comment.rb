class AddUserForeignKeyToComment < ActiveRecord::Migration[7.0]
  def up
    add_column :comments, :user_id, :foreign_key
  end

  def down
    remove_column :comments, :user_id
  end
end
