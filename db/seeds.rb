# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.firstQ
Question.create!(content: "what are you looking for ?", position: 1)
Question.create!(content: "hello you ", position: 2)
Question.create!(content: "come on ", position: 3)
Question.create!(content: "aldric ", position: 4)
Question.create!(content: "roror ", position: 5)

PossibleAnswer.create!(content: "surf",question_id: 1, next_position: 3 )
PossibleAnswer.create!(content: "kite",question_id: 1, next_position: 2 )
PossibleAnswer.create!(content: "momo",question_id: 3, next_position: 5 )
PossibleAnswer.create!(content: "toto",question_id: 2, next_position: 4 )
User.create!(first_name: "al", last_name: "freda", email: "alfreda@gmail.com")

Statement.create!(status: "surf",user_id:1)
