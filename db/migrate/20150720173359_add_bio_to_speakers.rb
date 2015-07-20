class AddBioToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :bio, :text, default: ''
  end
end
