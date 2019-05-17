class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string "task"
      t.integer "college_track_id"
      t.timestamps
    end
  end
end
