# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.firstQ
PossibleAnswer.destroy_all
Question.destroy_all
Statement.destroy_all
User.destroy_all
puts "all destroy"
puts"create question"
ro=User.create!(first_name: "al", last_name: "freda", email: "alfreda@gmail.com")
q1=Question.create!(content: "what are you looking for ?", position: 1)
q2=Question.create!(content: "hello you ", position: 2)
q3=Question.create!(content: "come on ", position: 3)
q4=Question.create!(content: "aldric ", position: 4)
q5=Question.create!(content: "roror ", position: 5)

PossibleAnswer.create!(content: "surf",question_id: q1.id, next_position: 3 )
PossibleAnswer.create!(content: "kite",question_id: q1.id, next_position: 2 )
PossibleAnswer.create!(content: "momo",question_id: q3.id, next_position: 5 )
PossibleAnswer.create!(content: "toto",question_id: q2.id, next_position: 4 )
puts "all done"
Statement.create!(status: "surf",user_id:ro.id)
