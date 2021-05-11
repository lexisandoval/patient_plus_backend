class DoctorSerializer
  include JSONAPI::Serializer
  attributes :name, :phone_number, :specialty, :location
end
