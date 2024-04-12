# MedInfoData

Data model:

Each doctor has a unique DoctorID, along with attributes such as name, specialization, phone, and email.

Each patient has a unique PatientID, including attributes like name, date of birth, gender, address, phone, and medical history. Additionally, each patient is associated with a doctor through the DoctorID foreign key in the Patient table.

Each newborn baby has a unique BabyID, along with the ID of the mother (MotherID), name, gender, date of birth, weight, and length. The relationship between Patient and NewbornBaby is established through the MotherID foreign key in the NewbornBaby table, which references the PatientID of the mother in the Patient table.