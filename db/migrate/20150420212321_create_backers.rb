class CreateBackers < ActiveRecord::Migration
  def change
    create_table :backers do |t|
      t.string :role
      t.string :logo
      t.string :website

      t.timestamps null: false
    end
  end
end
