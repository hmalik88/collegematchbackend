class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :e_mail, :password, :address_line_1, :address_line_2, :unit, :city, :state, :zip_code
  has_many :colleges
end
