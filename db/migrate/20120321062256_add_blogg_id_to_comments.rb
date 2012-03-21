class AddBloggIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :blogg_id, :integer

  end
end
