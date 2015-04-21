class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :company
      t.string :website
      t.string :avatar

      t.timestamps null: false
    end
  end
end
