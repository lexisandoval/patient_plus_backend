class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :username, :email
  
  has_many :doctors, serializer:DoctorSerializer
  has_many :conditions, serializer:ConditionSerializer
end
