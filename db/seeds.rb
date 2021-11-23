#Gems

Specialist.destroy_all
Speciality.destroy_all
Question.destroy_all

titles = ["psychologist", "social worker", "generalist", "police", "legal expert", "non-profit association", "hospital", "psychiatrist"]

first_names = ["Axel", "Raphael", "Pierre", "Alexandra", "Micheline", "Hubert", "Jean-Claude", "Marjory", "Pauline", "Augustin", "Julie", "Belle", "Marie", "José", "Miranda"]

last_names = ["Dujardin", "Lamotte", "Henry", "Malaca", "Prost", "Descartes", "Dumont", "van der Strike", "Lagaffe", "Montgris", "Boule", "Jameson", "Lamar", "Fenadal", "Morison"]

addresses = ["Rue de Paris 112, 1140 Evere", "Rue Haute 298/A, 1000 Bruxelles", "Bd de l'Abattoir 28, 1000 Bruxelles", "Av. d'Auderghem 170, 1040 Etterbeek", "Rue des Colonies 11, 1000 Bruxelles", "Av. De Fré 206, 1180 Uccle", "Rue Lambert Vandervelde 29, 1170 Watermael-Boitsfort", "Rue des Tritomas 39, 1170 Bruxelles", "Bd Auguste Reyers 67/B12, 1030 Schaerbeek", "Av. de Broqueville 9, 1150 Woluwe-Saint-Pierre", "Rue Lambert Crickx 19, 1070 Anderlecht", "Rue Antoine Gautier 118, 1040 Etterbeek", "Av. Brugmann 307, 1180 Uccle", "Hoogstraat 13, 1930 Zaventem", "Chau. de Gand 517, 1080 Molenbeek-Saint-Jean"]

phonenumbers = ["+32475089762", "+32477089762", "+32477089761", "+32477089762", "+32477089763", "+32477089764", "+32477089765", "+32477089767", "+32477089768", "+32477089769", "+32477089760", "+32477089712", "+32477089722", "+32477089732", "+32477089742", "+32477089752"]

availabilities = [true, false]

emails = ["Axel@gmail.com", "Raphael@gmail.com", "Pierre@gmail.com", "Hubert@gmail.com", "Descartes@gmail.com", "Marjory@gmail.com", "Pauline@gmail.com", "Lagaffe@gmail.com", "Jameson@gmail.com", "Belle@gmail.com", "Malaca@gmail.com", "Henry@gmail.com", "james@gmail.com", "loris@gmail.com", "brandon@gmail.com"]


#---------------------------------------------------------------------------------------------------------------


specialties = []
titles.each do |title|
  specialties << Speciality.create(name: title)
end

puts "Creating specialists"
10.times do
  Specialist.create!(first_name: first_names.sample, last_name: last_names.sample, address: addresses.sample, availability: availabilities.sample, speciality: specialties.sample, phonenumber: phonenumbers.sample, email: emails.sample)
end
puts "Done"


#---------------------------------------------------------------------------------------------------------------


puts "Creating questions"
#SEXUAL HARRASSMENT QUESTIONS
preq = Question.create!(content: "Are you a witness or the victim?", position: 1)
q1 = Question.create!(content: "What happened was mainly caused by?", position: 2)
q2 = Question.create!(content: "The original goal of the action caused mainly?", position: 3)
q3 = Question.create!(content: "The physical damage was?", position: 4)
q4 = Question.create!(content: "What is the relation with the author(s)?", position: 5)
q5 = Question.create!(content: "Are you living under the same roof?", position: 6)
q6 = Question.create!(content: "What happened had to do with?", position: 7)
q7 = Question.create!(content: "Where did it happen?", position: 8)
q8 = Question.create!(content: "Was there any physical violence involved?", position: 9)
q9 = Question.create!(content: "The material damage was caused by?", position: 10)
q10 = Question.create!(content: "The main action was?", position: 11)


#SEXUAL HARRASSMENT POSSIBLE ANSWERS
preqsa1 = PossibleAnswer.create!(content: "Witness", question_id: preq.id)
preqsa2 = PossibleAnswer.create!(content: "Victim", question_id: preq.id, next_position: 2)
q1sa1 = PossibleAnswer.create!(content: "A person", question_id: q1.id, next_position: 3)
q1sa2 = PossibleAnswer.create!(content: "An animal", question_id: q1.id)
q1sa3 = PossibleAnswer.create!(content: "A moveable object", question_id: q1.id)
q1sa4 = PossibleAnswer.create!(content: "A building / house", question_id: q1.id)
q2sa1 = PossibleAnswer.create!(content: "Physicial damage", question_id: q2.id, next_position: 4)
q2sa2 = PossibleAnswer.create!(content: "Material damage", question_id: q2.id)
q3sa1 = PossibleAnswer.create!(content: "Sexually oriented", question_id: q3.id, next_position: 5)
q3sa2 = PossibleAnswer.create!(content: "Physically oriented", question_id: q3.id)
q4sa1 = PossibleAnswer.create!(content: "Family", question_id: q4.id, next_position: 6)
q4sa2 = PossibleAnswer.create!(content: "Friends", question_id: q4.id)
q4sa3 = PossibleAnswer.create!(content: "Lover", question_id: q4.id)
q4sa4 = PossibleAnswer.create!(content: "Stranger / Aquaintance ", question_id: q4.id)
q5sa1 = PossibleAnswer.create!(content: "Yes", question_id: q5.id)
q5sa2 = PossibleAnswer.create!(content: "No", question_id: q5.id)
q5sa1 = PossibleAnswer.create!(content: "Yes", question_id: q8.id)
q5sa2 = PossibleAnswer.create!(content: "No", question_id: q8.id)
q3ha1 = PossibleAnswer.create!(content: "Theft", question_id: q9.id)
q3ha2 = PossibleAnswer.create!(content: "Arson", question_id: q9.id)
q3ha1 = PossibleAnswer.create!(content: "Theft", question_id: q6.id)
q3ha2 = PossibleAnswer.create!(content: "Arson", question_id: q6.id)
q3ha3 = PossibleAnswer.create!(content: "Destruction / Damaging of property", question_id: q6.id)
q3ha3 = PossibleAnswer.create!(content: "Destruction / Damaging of property", question_id: q9.id)
q4ha3 = PossibleAnswer.create!(content: "Servant", question_id: q4.id)
q4ha4 = PossibleAnswer.create!(content: "Employee", question_id: q4.id)
q5ha1 = PossibleAnswer.create!(content: "In your house", question_id: q7.id)
q5ha2 = PossibleAnswer.create!(content: "In your workspace", question_id: q7.id)
q5ha3 = PossibleAnswer.create!(content: "In a neutral place", question_id: q7.id)
q5ha4 = PossibleAnswer.create!(content: "In your car", question_id: q7.id)
q4ra1 = PossibleAnswer.create!(content: "Road rage", question_id: q10.id)
q4ra1 = PossibleAnswer.create!(content: "Road rage", question_id: q9.id)
q5ra1 = PossibleAnswer.create!(content: "Agression", question_id: q10.id)
q5ra3 = PossibleAnswer.create!(content: "Assault", question_id: q10.id)


#---------------------------------------------------------------------------------------------------------------
