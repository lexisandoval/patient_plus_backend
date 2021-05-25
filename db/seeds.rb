laura = User.create(name: "Laura Copeland", username: "lauracopeland", email: "laura.copeland@gmail.com", password: "password")

gregory = Doctor.create(name: "Gregory Zimmerman", phone_number: "214-749-8244", specialty: "Lipidologist", location: "Lakeland General Hospital")

michael = Doctor.create(name: "Michael Miller", phone_number: "760-696-4879", specialty: "Cardiologist", location: "Fairbanks Medical Center")

cholesterol = Condition.create(name: "High Cholesterol", user_id: 1)

ra = Condition.create(name: "Rheumatoid Arthritis", user_id:1)

simvastatin = Medication.create(name: "Simvastatin", prescription: "20 mg", user_id: 1, doctor_id: 1, condition_id: 1)

humira = Medication.create(name: "Humira", prescription: "40 mg", user_id: 1, doctor_id: 2, condition_id: 2)
