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

symptom25 = Symptom.create!(
  name: "Cough",
  code: 25
)

symptom26 = Symptom.create!(
  name: "Dizziness (lightheadedness)",
  code: 26
)

symptom27 = Symptom.create!(
  name: "Dry mouth",
  code: 27
)

symptom28 = Symptom.create!(
  name: "Earache",
  code: 28
)

symptom29 = Symptom.create!(
  name: "Elbow problems",
  code:29
)

symptom30 = Symptom.create!(
  name: "Fever in adults",
  code: 30
)

symptom31 = Symptom.create!(
  name: "Fever in children",
  code: 31
)

symptom32 = Symptom.create!(
  name: "Flatulence",
  code: 32
)

symptom33 = Symptom.create!(
  name: "Stomach ache and abdominal pain",
  code: 33
)

symptom34 = Symptom.create!(
  name: "Diarrhoea",
  code: 34
)

symptom35 = Symptom.create!(
  name: "Loss of appetite",
  code: 35
)

symptom36 = Symptom.create!(
  name: "Difficulty sleeping",
  code: 36
)

symptom37 = Symptom.create!(
  name: "Dry cough",
  code: 37
)

symptom38 = Symptom.create!(
  name: "Weakness",
  code: 38
)

symptom39 = Symptom.create!(
  name: "Sore throat",
  code: 39
)

symptom40 = Symptom.create!(
  name: "Runny or blocked nose",
  code: 40
)

symptom41 = Symptom.create!(
  name: "Headache",
  code: 41
)

symptom42 = Symptom.create!(
  name: "Hearing loss",
  code: 42
)

symptom43 = Symptom.create!(
  name: "Heart palpitations",
  code: 43
)

symptom44 = Symptom.create!(
  name: "Hip problems",
  code: 44
)

symptom45 = Symptom.create!(
  name: "Indigestion",
  code: 45
)

symptom46 = Symptom.create!(
  name: "Itchy bottom"
  code: 46
)

symptom47 = Symptom.create!(
  name: "Itching",
  code: 47
)

symptom48 = Symptom.create!(
  name: "Vomiting",
  code: 48
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
record_symptom25 = RecordSymptom.new
record_symptom26 = RecordSymptom.new
record_symptom27 = RecordSymptom.new
record_symptom28 = RecordSymptom.new
record_symptom29 = RecordSymptom.new
record_symptom30 = RecordSymptom.new
record_symptom31 = RecordSymptom.new
record_symptom32 = RecordSymptom.new
record_symptom33 = RecordSymptom.new
record_symptom34 = RecordSymptom.new
record_symptom35 = RecordSymptom.new
record_symptom36 = RecordSymptom.new
record_symptom37 = RecordSymptom.new
record_symptom38 = RecordSymptom.new
record_symptom39 = RecordSymptom.new
record_symptom40 = RecordSymptom.new
record_symptom41 = RecordSymptom.new
record_symptom42 = RecordSymptom.new
record_symptom43 = RecordSymptom.new
record_symptom44 = RecordSymptom.new
record_symptom45 = RecordSymptom.new
record_symptom46 = RecordSymptom.new
record_symptom47 = RecordSymptom.new
record_symptom48 = RecordSymptom.new


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

record_symptom25.symptom_id = symptom25.id

record_symptom26.symptom_id = symptom26.id

record_symptom27.symptom_id = symptom27.id

record_symptom28.symptom_id = symptom28.id

record_symptom29.symptom_id = symptom29.id

record_symptom30.symptom_id = symptom30.id

record_symptom31.symptom_id = symptom31.id

record_symptom32.symptom_id = symptom32.id

record_symptom33.symptom_id = symptom33.id

record_symptom34.symptom_id = symptom34.id

record_symptom35.symptom_id = symptom35.id

record_symptom36.symptom_id = symptom36.id

record_symptom37.symptom_id = symptom37.id


record_symptom38.symptom_id = symptom38.id

record_symptom39.symptom_id = symptom39.id

record_symptom40.symptom_id = symptom40.id

record_symptom41.symptom_id = symptom41.id

record_symptom42.symptom_id = symptom42.id

record_symptom43.symptom_id = symptom43.id

record_symptom44.symptom_id = symptom44.id

record_symptom45.symptom_id = symptom45.id

record_symptom46.symptom_id = symptom46.id

record_symptom47.symptom_id = symptom47.id

record_symptom48.symptom_id = symptom48.id



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
record_symptom25.save!
record_symptom26.save!
record_symptom27.save!
record_symptom28.save!
record_symptom29.save!
record_symptom30.save!
record_symptom31.save!
record_symptom32.save!
record_symptom33.save!
record_symptom34.save!
record_symptom35.save!
record_symptom36.save!
record_symptom37.save!
record_symptom38.save!
record_symptom39.save!
record_symptom40.save!
record_symptom41.save!
record_symptom42.save!
record_symptom43.save!
record_symptom44.save!
record_symptom45.save!
record_symptom46.save!
record_symptom47.save!
record_symptom48.save!

puts "done!"
