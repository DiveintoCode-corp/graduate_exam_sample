class AddNameColumnToUsersAndAddUserIdToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, null: false
    add_reference :blogs, :user, foreign_key: true
  end
end
