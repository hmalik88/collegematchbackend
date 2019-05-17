class RemoveColumnFromTracks < ActiveRecord::Migration[5.2]
  def change
    remove_column :college_tracks, :checklist
  end
end
