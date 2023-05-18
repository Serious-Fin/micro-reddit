class AddPostForeignKeyToComment < ActiveRecord::Migration[7.0]
  def up
    add_column :comments, :post_id, :foreign_key
  end

  def down
    remove_column :comments, :post_id
  end
end
