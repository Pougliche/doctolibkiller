require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


20.times do |index|
    city = City.create!(city_name: Faker::Address.city)
    specialty = Specialty.create!(specialty_name: Faker::DcComics.hero)
end

100.times do |index|
    med = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
        puts "Plein de docteurs ont été crées"
    patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)


3.times do 
    specialty = SpecialRef.create(doctor: med, specialty: Specialty.all.sample)
end

    appointment = Appointment.create(doctor: med, patient: Patient.all.sample, city: med.city, specialty: SpecialRef.where(doctor: med).sample.specialty, date_time: Faker::Time.forward(days: 30))

end

puts "plein de trucs ont été crées, allez marche stp"