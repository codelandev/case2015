class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :happens_at
      t.string :place
      t.string :speaker

      t.timestamps null: false
    end
  end
end
