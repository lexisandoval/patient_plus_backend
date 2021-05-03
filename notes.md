MODELS:

1. User
  • name
  • username
  • email
  • password
  - has_many emergency_contacts
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
  - has_many medications
  - belongs_to user

5. Emergency Contact
  • name
  • phone number
  • relationship to patient
  - belongs_to user
