class ConditionSerializer
  include JSONAPI::Serializer
  attributes :name
  has_many :medications
end
