class AddCommentToBloggs < ActiveRecord::Migration
  def change
    add_column :bloggs, :comment, :string

  end
end
