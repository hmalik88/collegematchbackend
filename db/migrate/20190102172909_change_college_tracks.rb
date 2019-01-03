class ChangeCollegeTracks < ActiveRecord::Migration[5.2]
  def change
    rename_column :college_tracks, :users_id, :user_id
  end
end
