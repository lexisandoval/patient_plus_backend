class MedicationSerializer
  include JSONAPI::Serializer
  attributes :name, :prescription, :doctor, :condition
end
