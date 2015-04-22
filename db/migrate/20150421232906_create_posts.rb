class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :short_description
      t.text :content
      t.datetime :published_at
      t.string :author

      t.timestamps null: false
    end
  end
end
