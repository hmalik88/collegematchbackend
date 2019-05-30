class CollegeTrack < ApplicationRecord
belongs_to :user
has_many :tasks
validates :major, uniqueness: {case_sensitive: false}
end
