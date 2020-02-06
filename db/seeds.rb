# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'doctor.rb'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

13.times do
  doctor = Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    specialty: Faker::Job.field,
    zip_code: Faker::Address.zip_code)
end

37.times do
  patient = Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name)
end

68.times do
  appointment = Appointment.create!(date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short))
end
