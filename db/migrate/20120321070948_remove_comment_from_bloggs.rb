class RemoveCommentFromBloggs < ActiveRecord::Migration
  def up
    remove_column :bloggs, :comment
      end

  def down
    add_column :bloggs, :comment, :string
  end
end
