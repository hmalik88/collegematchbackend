class CollegeSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :state, :info
  has_many :users
end
