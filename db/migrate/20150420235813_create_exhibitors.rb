class CreateExhibitors < ActiveRecord::Migration
  def change
    create_table :exhibitors do |t|
      t.string :logo
      t.string :name
      t.text :description
      t.string :website

      t.timestamps null: false
    end
  end
end
