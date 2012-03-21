class AddCommentsToBloggs < ActiveRecord::Migration
  def change
    add_column :bloggs, :comment, :string

  end
end
