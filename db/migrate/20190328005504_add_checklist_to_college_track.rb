class AddChecklistToCollegeTrack < ActiveRecord::Migration[5.2]
  def change
    add_column :college_tracks, :checklist, :string
  end
end
