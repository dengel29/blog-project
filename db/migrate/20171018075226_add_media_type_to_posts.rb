class AddMediaTypeToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :media_type, :string
  end
end
