class AddColumnToCollegeTrack < ActiveRecord::Migration[5.2]
  def change
    add_column :college_tracks, :career_name, :string
  end
end
