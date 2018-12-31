class CreateCollegeTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :college_tracks do |t|
      t.integer "college_id"
      t.integer "users_id"
      t.index ["college_id"], name: "index_college_tracks_on_college_id"
      t.index ["users_id"], name: "index_college_tracks_on_users_id"
    end
  end
end
