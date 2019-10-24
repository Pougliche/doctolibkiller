require 'faker'
require 'colorize'

20.times do |index|
    city = City.create!(city_name: Faker::Address.city)
        specialty = Specialty.create!(specialty_name: Faker::DcComics.hero)
end

100.times do |index|
    med = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
        patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)

3.times do 
    specialty = SpecialRef.create(doctor: med, specialty: Specialty.all.sample)
end
    appointment = Appointment.create(doctor: med, patient: Patient.all.sample, city: med.city, specialty: SpecialRef.where(doctor: med).sample.specialty, date_time: Faker::Time.forward(days: 30))
end

puts "20 CITIES AND MEDICAL SPECIALTIES HAVE BEEN CREATED. 100 DOCTORS, PATIENTS AND APPOINTMENTS HAVE BEEN CREATED. WHERE IS YOUR GOD NOW?".green