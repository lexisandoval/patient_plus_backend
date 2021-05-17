class MedicationSerializer
  include JSONAPI::Serializer
  attributes :name, :prescription
end
