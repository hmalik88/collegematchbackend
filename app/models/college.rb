class College < ApplicationRecord
has_many :college_tracks
has_many :users, through: :college_tracks
has_many :courses
has_many :checklists


end
