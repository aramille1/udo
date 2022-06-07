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
  code: 1
)

symptom2 = Symptom.create!(
  name: "Puking",
  code: 2
)

symptom3 = Symptom.create!(
  name: "Tiredness",
  code: 3
)

symptom4 = Symptom.create!(
  name: "Sneezing",
  code: 4
)

symptom5 = Symptom.create!(
  name: "Blocked nose",
  code:5
)

symptom6 = Symptom.create!(
  name: "Itchy rash",
  code: 6
)

symptom7 = Symptom.create!(
  name: "Stiffness",
  code: 7
)

symptom8 = Symptom.create!(
  name: "Muscle spasms",
  code: 8
)

symptom9 = Symptom.create!(
  name: "Stabbing pains in your back and sometimes into one or both of your legs",
  code: 9
)

symptom10 = Symptom.create!(
  name: "Bowel incontinence",
  code: 10
)

symptom11 = Symptom.create!(
  name: "Calf problems",
  code: 11
)

symptom12 = Symptom.create!(
  name: "Catarrh",
  code: 12
)

symptom13 = Symptom.create!(
  name: "Chest pain",
  code: 13
)

symptom14 = Symptom.create!(
  name: "Chilblains",
  code: 14
)

symptom15 = Symptom.create!(
  name: "Chronic pain",
  code: 15
)

symptom16 = Symptom.create!(
  name: "Living well with coeliac disease",
  code: 16
)

symptom17 = Symptom.create!(
  name: "Constipation",
  code: 17
)

symptom18 = Symptom.create!(
  name: "Itchy rash",
  code: 18
)

symptom19 = Symptom.create!(
  name: "Stiffness",
  code: 19
)

symptom20 = Symptom.create!(
  name: "Muscle spasms",
  code: 20
)

symptom21 = Symptom.create!(
  name: "Stabbing pains in your back and sometimes into one or both of your legs",
  code: 21
)

symptom22 = Symptom.create!(
  name: "Bowel incontinence",
  code: 22
)

symptom23 = Symptom.create!(
  name: "Calf problems",
  code: 23
)

symptom24 = Symptom.create!(
  name: "Constipation",
  code: 24
)



record_symptom1 = RecordSymptom.new
record_symptom2 = RecordSymptom.new
record_symptom3 = RecordSymptom.new
record_symptom4 = RecordSymptom.new
record_symptom5 = RecordSymptom.new
record_symptom6 = RecordSymptom.new
record_symptom7 = RecordSymptom.new
record_symptom8 = RecordSymptom.new
record_symptom9 = RecordSymptom.new
record_symptom10 = RecordSymptom.new
record_symptom11 = RecordSymptom.new
record_symptom12 = RecordSymptom.new
record_symptom13 = RecordSymptom.new
record_symptom14 = RecordSymptom.new
record_symptom15 = RecordSymptom.new
record_symptom16 = RecordSymptom.new
record_symptom17 = RecordSymptom.new
record_symptom18 = RecordSymptom.new
record_symptom19 = RecordSymptom.new
record_symptom20 = RecordSymptom.new
record_symptom21 = RecordSymptom.new
record_symptom22 = RecordSymptom.new
record_symptom23 = RecordSymptom.new
record_symptom24 = RecordSymptom.new


profile1.user_id = user1.id
profile2.user_id = user2.id
profile3.user_id = user3.id

record_symptom1.record_id = record1.id
record_symptom1.symptom_id = symptom1.id

record_symptom2.record_id = record2.id
record_symptom2.symptom_id = symptom2.id

record_symptom3.record_id = record3.id
record_symptom3.symptom_id = symptom3.id

record_symptom4.symptom_id = symptom4.id

record_symptom5.symptom_id = symptom5.id

record_symptom6.symptom_id = symptom6.id

record_symptom7.symptom_id = symptom7.id

record_symptom8.symptom_id = symptom8.id

record_symptom9.symptom_id = symptom9.id

record_symptom10.symptom_id = symptom10.id

record_symptom11.symptom_id = symptom11.id

record_symptom12.symptom_id = symptom12.id

record_symptom13.symptom_id = symptom13.id

record_symptom14.symptom_id = symptom14.id

record_symptom15.symptom_id = symptom15.id

record_symptom16.symptom_id = symptom16.id

record_symptom17.symptom_id = symptom17.id

record_symptom18.symptom_id = symptom18.id

record_symptom19.symptom_id = symptom19.id

record_symptom20.symptom_id = symptom20.id

record_symptom21.symptom_id = symptom21.id

record_symptom22.symptom_id = symptom22.id

record_symptom23.symptom_id = symptom23.id

record_symptom24.symptom_id = symptom24.id



profile1.save!
profile2.save!
profile3.save!

record_symptom1.save!
record_symptom2.save!
record_symptom3.save!
record_symptom4.save!
record_symptom5.save!
record_symptom6.save!
record_symptom7.save!
record_symptom8.save!
record_symptom9.save!
record_symptom10.save!
record_symptom11.save!
record_symptom12.save!
record_symptom13.save!
record_symptom14.save!
record_symptom15.save!
record_symptom16.save!
record_symptom17.save!
record_symptom18.save!
record_symptom19.save!
record_symptom20.save!
record_symptom21.save!
record_symptom22.save!
record_symptom23.save!
record_symptom24.save!

puts "done!"
