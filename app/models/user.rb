class User < ApplicationRecord
has_secure_password
has_many :college_tracks
validates :e_mail, uniqueness: {case_sensitive: false}


end
