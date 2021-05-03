MODELS:

1. User
  • name
  • username
  • email
  • password
  • emergency contacts
  - has_many medications
  - has_many conditions
  - has_many doctors

2. Medication
  • name
  • prescription
  - belongs_to user
  - belongs_to condition
  - belongs_to doctor (prescribed by doctor)

3. Doctor
  • name
  • phone number
  • specialty
  • location
  - has_many patients
  - has_many medications (prescribes many meds)

4. Condition
  • name
  • time
  - has_many medications
  - belongs_to user
