class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :username, :email, :doctors

  # has_many :doctors, serializer:DoctorSerializer
end
