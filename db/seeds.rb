require "date"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning the database.."

RecordSymptom.destroy_all
Record.destroy_all
Profile.destroy_all
User.destroy_all
Symptom.destroy_all

puts "Creating the seed.."

user1 = User.create!(email: 'user1@udo.com', password: '123456')
user2 = User.create!(email: 'user2@udo.com', password: '123456')
user3 = User.create!(email: 'user3@udo.com', password: '123456')

profile1 = Profile.new(
  date_of_birth: Date.new(2001,2,25),
  gender: "male",
  allergies: "bees",
  medication: "ibuprofen",
  dosage: 100,
  times_per_day: 1,
  vaccinations: "Johnson Johnson",
  blood_type: "B",
  race:"asian"
)

profile2 = Profile.new(
  date_of_birth: Date.new(1997,5,23),
  gender: "female",
  allergies: "seafood",
  medication: "antipufin",
  dosage: 200,
  times_per_day: 3,
  vaccinations: "Johnson Johnson",
  blood_type: "A",
  race: "white"
)

profile3 = Profile.new(
  date_of_birth: Date.new(1986,5,23),
  gender: "female",
  allergies: "hay fever",
  medication: "schmiliprufin",
  dosage: 1000,
  times_per_day: 5,
  vaccinations: "Sputnik",
  blood_type: "B",
  race:"asian"
)

record1 = Record.new(
  disease: "Breast cancer",
  notes: "Some important steps to feel better",
  medication: "ibuprofen",
  date: Date.yesterday
)
record1.user_id = user1.id
record1.save!



record2 = Record.new(
  disease: "Botulism",
  notes: "Some important steps to feel better",
  medication: "ibuprofen",
  date: Date.yesterday
)
record2.user_id = user2.id
record2.save!

record3 = Record.new(
  disease: "Coronavirus disease (COVID-19)",
  notes: "Some important steps to feel better",
  medication: "vaccination",
  date: Date.yesterday
)
record3.user_id = user3.id
record3.save!

symptom1 = Symptom.create!(
  name: "Dizziness",
  code: 242
)

symptom2 = Symptom.create!(
  name: "Puking",
  code: 243
)

symptom3 = Symptom.create!(
  name: "Tiredness",
  code: 244
)

record_symptom1 = RecordSymptom.new
record_symptom2 = RecordSymptom.new
record_symptom3 = RecordSymptom.new


profile1.user_id = user1.id
profile2.user_id = user2.id
profile3.user_id = user3.id

record_symptom1.record_id = record1.id
record_symptom1.symptom_id = symptom1.id

record_symptom2.record_id = record2.id
record_symptom2.symptom_id = symptom2.id

record_symptom3.record_id = record3.id
record_symptom3.symptom_id = symptom3.id


profile1.save!
profile2.save!
profile3.save!

record_symptom1.save!
record_symptom2.save!
record_symptom3.save!

puts "done!"
