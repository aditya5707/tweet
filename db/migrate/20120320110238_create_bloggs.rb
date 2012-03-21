class CreateBloggs < ActiveRecord::Migration
  def change
    create_table :bloggs do |t|
      t.string :username
      t.string :blog_title
      t.string :content

      t.timestamps
    end
  end
end
