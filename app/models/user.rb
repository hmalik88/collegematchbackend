class User < ApplicationRecord
has_secure_password
has_many :college_tracks
has_many :colleges, through: :college_tracks
validates :username, uniqueness: {case_sensitive: false}


end
