class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :username
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
