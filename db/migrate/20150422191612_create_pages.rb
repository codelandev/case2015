class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :title
      t.text :content

      t.timestamps null: false
    end
  end
end
