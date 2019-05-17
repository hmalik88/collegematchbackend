class ChangeColumnsInTracks < ActiveRecord::Migration[5.2]
  def change
    rename_column :college_tracks, :career_name, :major
  end
end
