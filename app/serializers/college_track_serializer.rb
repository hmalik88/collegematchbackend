class CollegeTrackSerializer < ActiveModel::Serializer
  attributes :id, :college_id, :major
  belongs_to :user
end
