class RemoveTypeFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :type, :string
  end
end
