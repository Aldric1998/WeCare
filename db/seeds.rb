#Gems

FirstaidkitSpecialist.destroy_all
Specialist.destroy_all
Speciality.destroy_all
Answer.destroy_all
FirstaidkitAnswer.destroy_all
PossibleAnswer.destroy_all
Question.destroy_all
Statement.destroy_all
ForumPost.destroy_all
ForumThread.destroy_all
ForumCategory.destroy_all
User.destroy_all

titles = ["psychologist", "insurance", "social worker", "generalist", "police", "legal expert", "non-profit association", "hospital", "psychiatrist"]

first_names = ["Axel", "Raphael", "Pierre", "Alexandra", "Micheline", "Hubert", "Jean-Claude", "Marjory", "Pauline", "Augustin", "Julie", "Belle", "Marie", "José", "Miranda", "Jean", "Lucas", "Josette", "Daphnée", "Romain", "Aldric", "Nicolas", "Marianne", "Diane"]

last_names = ["Dujardin", "Lamotte", "Henry", "Malaca", "Prost", "Descartes", "Dumont", "van der Strike", "Lagaffe", "Montgris", "Boule", "Jameson", "Lamar", "Fenadal", "Morison", "Dupont", "Laupin", "Chirac", "Bousval", "Paras", "Vyver", "Marchant"]

addresses = ["Rue de Paris 112, 1140 Evere", "Rue Haute 298/A, 1000 Bruxelles", "Bd de l'Abattoir 28, 1000 Bruxelles", "Av. d'Auderghem 170, 1040 Etterbeek", "Rue des Colonies 11, 1000 Bruxelles", "Av. De Fré 206, 1180 Uccle", "Rue Lambert Vandervelde 29, 1170 Watermael-Boitsfort", "Rue des Tritomas 39, 1170 Bruxelles", "Bd Auguste Reyers 67/B12, 1030 Schaerbeek", "Av. de Broqueville 9, 1150 Woluwe-Saint-Pierre", "Rue Lambert Crickx 19, 1070 Anderlecht", "Rue Antoine Gautier 118, 1040 Etterbeek", "Av. Brugmann 307, 1180 Uccle", "Hoogstraat 13, 1930 Zaventem", "Chau. de Gand 517, 1080 Molenbeek-Saint-Jean","Av. Paul Vanden Thoren 15, 1160 Auderghem, Av. de la Foresterie 2, 1170 Bruxelles", "Pl. de la Chapelle 5, 1000 Bruxelles", "Rue Saxe-Cobourg 6, 1210 Bruxelles", "Av. Georges Henri 356, 1200 Woluwe-Saint-Lambert", "Avenue du Castel 10, 1200", "Av. Franklin Roosevelt 79, 1050 Bruxelles", "Rue Brederode 16, 1000 Bruxelles", "Chau. de Mons 14, 1070 Anderlecht"]

phonenumbers = ["+32475089762", "+32477089762", "+32477089761", "+32477089762", "+32477089763", "+32477089764", "+32477089765", "+32477089767", "+32477089768", "+32477089769", "+32477089760", "+32477089712", "+32477089722", "+32477089732", "+32477089742", "+32477089752"]

availabilities = [true, false]

emails = ["Axel@gmail.com", "Raphael@gmail.com", "Pierre@gmail.com", "Hubert@gmail.com", "Descartes@gmail.com", "Marjory@gmail.com", "Pauline@gmail.com", "Lagaffe@gmail.com", "Jameson@gmail.com", "Belle@gmail.com", "Malaca@gmail.com", "Henry@gmail.com", "james@gmail.com", "loris@gmail.com", "brandon@gmail.com"]


#---------------------------------------------------------------------------------------------------------------


specialties = []
titles.each do |title|
  specialties << Speciality.create(name: title)
end

puts "Creating specialists"
14.times do
  Specialist.create!(first_name: first_names.sample, last_name: last_names.sample, address: addresses.sample, availability: availabilities.sample, speciality: specialties.sample, phonenumber: phonenumbers.sample, email: emails.sample)
end
puts "Done"


#---------------------------------------------------------------------------------------------------------------
User.create!(first_name: "wecare", last_name: "wecare", email: "a@a.com", password: "azerty")

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
q11 = Question.create!(content: "What is your connection to the incident?", position: 12)
puts "Done"

puts "Creating possible answers"
#SEXUAL HARRASSMENT POSSIBLE ANSWERS
preqa1 = PossibleAnswer.create!(content: "Witness", question_id: preq.id, next_position: 12)
preqa2 = PossibleAnswer.create!(content: "Victim", question_id: preq.id, next_position: 2)
q1sa1 = PossibleAnswer.create!(content: "A person", question_id: q1.id, next_position: 3)
q1sa2 = PossibleAnswer.create!(content: "An animal", question_id: q1.id)
q1sa3 = PossibleAnswer.create!(content: "A moveable object", question_id: q1.id)
q1sa4 = PossibleAnswer.create!(content: "A building / house", question_id: q1.id)
q2sa1 = PossibleAnswer.create!(content: "Physical damage", question_id: q2.id, next_position: 4)
q2sa2 = PossibleAnswer.create!(content: "Material damage", question_id: q2.id, next_position: 10)
q3a1 = PossibleAnswer.create!(content: "Sexually oriented", question_id: q3.id, next_position: 5)
q3sa2 = PossibleAnswer.create!(content: "Physically oriented", question_id: q3.id, next_position: 11)
q4sa1 = PossibleAnswer.create!(content: "Family", question_id: q4.id, next_position: 6)
q4sa2 = PossibleAnswer.create!(content: "Friends", question_id: q4.id)
q4sa3 = PossibleAnswer.create!(content: "Lover", question_id: q4.id)
q4sa4 = PossibleAnswer.create!(content: "Stranger / Aquaintance ", question_id: q4.id, next_position: 8)
q5a1 = PossibleAnswer.create!(content: "Yes", question_id: q5.id)
q5sa2 = PossibleAnswer.create!(content: "No", question_id: q5.id)
q5sa1 = PossibleAnswer.create!(content: "Yes", question_id: q8.id)
q5a2 = PossibleAnswer.create!(content: "No", question_id: q8.id)
q3ha1 = PossibleAnswer.create!(content: "Theft", question_id: q9.id, next_position: 5)
q3ha2 = PossibleAnswer.create!(content: "Arson", question_id: q9.id)
q3ha1 = PossibleAnswer.create!(content: "Theft", question_id: q6.id, next_position: 5)
q3ha2 = PossibleAnswer.create!(content: "Arson", question_id: q6.id)
q3ha3 = PossibleAnswer.create!(content: "Destruction / Damaging of property", question_id: q6.id)
q3ha3 = PossibleAnswer.create!(content: "Destruction / Damaging of property", question_id: q9.id)
q4ha3 = PossibleAnswer.create!(content: "Servant", question_id: q4.id)
q4ha4 = PossibleAnswer.create!(content: "Employee", question_id: q4.id)
q5ha1 = PossibleAnswer.create!(content: "In your house", question_id: q7.id, next_position: 9)
q5ha2 = PossibleAnswer.create!(content: "In your workspace", question_id: q7.id)
q5ha3 = PossibleAnswer.create!(content: "In a neutral place", question_id: q7.id)
q5ha4 = PossibleAnswer.create!(content: "In your car", question_id: q7.id)
q4a1 = PossibleAnswer.create!(content: "Road rage", question_id: q10.id)
q4ra1 = PossibleAnswer.create!(content: "Road rage", question_id: q9.id, next_position: 11)
q5ra1 = PossibleAnswer.create!(content: "Agression", question_id: q10.id)
q5ra3 = PossibleAnswer.create!(content: "Assault", question_id: q10.id)
q6ra1 = PossibleAnswer.create!(content: "You saw what happened", question_id: q11.id, next_position: 2)
q6ra1 = PossibleAnswer.create!(content: "you know somebody who was a
witness", question_id: q11.id)

puts "Done"

puts "forumcat creating"
namecategorie = ["Harassment", "Roadrage", "Burglary"]
# categorie = []
# namecategorie.each do |cat|
#   categorie << ForumCategory.create!(name: cat)
# end

hey= ForumCategory.create!(name: namecategorie[0], slug: "Harassment")
heyy= ForumCategory.create!(name: namecategorie[1], slug: "Roadrage")
heya= ForumCategory.create!(name: namecategorie[2], slug: "Burglary")
#---------------------------------------------------------------------------------------------------------------

# FIRSTAIDKIT ANSWERS

puts "Creating first aid kits"

firstaidkit_sexharas = FirstaidkitAnswer.create!(content:
"<i class='fas fa-exclamation-triangle'></i>
<p> Search for medical help (your own doctor or general services in hospitals) after the event. Ideally in the 24 hours after it happened, maximum in the 72 hours after.</p>
<i class='fas fa-phone'></i>
<p><strong>red cross: 112 ; police: 101</strong></p>
<p>Reason: It is important to tend to possible wounds and to be sure that no diseases were transmitted. That way you will avoid further complications. It is also the best and most effective way to collect evidence about what happened.</p>
<i class='fas fa-home'></i>
<p><strong>If you live under the same roof as the author(s) and you want to stay:</strong></p>
<p>Think about a place where you can go if things escalate, prepare emergency phone numbers on your phone and talk about it with people you trust.</p>
<strong>If you live under the same roof and you want to leave:</strong>
<p>If you do not know where to go, there are safe places provided by hospitals: <a href='https://www.seksueelgeweld.be/zorgcentra-na-seksueel-geweld-wat-voor-wie-waar'>here</a>
Do not forget to take your personal documents (ID, passport, drivers license, health care papers) and personal property that you want to keep close to you.</p>

<i class='fas fa-gavel'></i>
<p>If the case hasn’t been started yet by the prosecutor: You can file a complaint at the nearest police station.</p>
<p>At any point: you can fill in the form that you received at the police station to become a disadvantaged party in the case. That way you will be able to keep track of the case and add documents/proof to the case.</p>
<p>If the case already started: you can make a declaration before the judge and ask to become a civil party. This means that you get all the rights to build your case and defend it in court.</p>", possible_answer_id: q3a1.id)
firstaidkit_sexharas.specialities << specialties[0]
firstaidkit_sexharas.specialities << specialties[2]
firstaidkit_sexharas.specialities << specialties[3]
firstaidkit_sexharas.specialities << specialties[4]
firstaidkit_sexharas.specialities << specialties[5]
firstaidkit_sexharas.specialities << specialties[6]
firstaidkit_sexharas.specialities << specialties[7]
firstaidkit_sexharas.specialities << specialties[8]
firstaidkit_sexharas.forum_category = hey
firstaidkit_sexharas.save!

firstaidkit_homeburg = FirstaidkitAnswer.create!(content: "<i class='fas fa-exclamation-triangle'></i>
<p>Control if the perpetrators are still on site. If yes, do not engage contact yourself, but call the police:</p>
<i class='fas fa-phone'></i>
<p><strong>police: 101</strong></p>

<i class='far fa-edit'></i>
<p>note down any usefull information about what the perpetrators looked like and what they stole.</p>
<p>If the perpetrators already left: make a list of all the stolen objects and damage. Take pictures of the damage and the entry point of the perpetrators. Do not clean the damage or your house untill the police can make an official statement.</p>
<i class='fas fa-house-damage'></i>
<p>Call your insurance to make sure what is covered by them.</p>
<p>If you are insured: You can file a complaint with your insurance.</p>
<p><a href='https://www.dvv.be/nl/verzekeringen/wonen/artikelen/wat-na-een-inbraak.html'>Any other questions?</a>", possible_answer_id: q5ha1.id )
firstaidkit_homeburg.specialities << specialties[1]
firstaidkit_homeburg.specialities << specialties[4]
firstaidkit_homeburg.specialities << specialties[5]
firstaidkit_homeburg.forum_category = heya
firstaidkit_homeburg.save!

firstaidkit_roadrage = FirstaidkitAnswer.create!(content: "
<strong><i class='fas fa-exclamation-triangle'></i>
<p>In case of physical violence: </p></strong>
<p>Search for medical help after the event and secure the area. You can try to help the victim while you are waiting for professional help, but never put yourself in danger too.</p>
<i class='fas fa-phone'></i>
<p><strong>red cross: 112 ; police: 101</strong></p>
<i class='far fa-edit'></i>
<p>Immediately start to collect evidence of what happened</p>
<p>For example: ask other witnesses or victims if they saw something and are prepared to make a statement for the police, write down number plates, write down any usefull information about the event.</p>
<p>Further information can be found <a href='https://www.slachtofferzorg.be/verkeersagressie'>here</a></p>", possible_answer_id: q4a1.id)
firstaidkit_roadrage.specialities << specialties[0]
firstaidkit_roadrage.specialities << specialties[1]
firstaidkit_roadrage.specialities << specialties[3]
firstaidkit_roadrage.specialities << specialties[4]
firstaidkit_roadrage.specialities << specialties[5]
firstaidkit_roadrage.forum_category = heyy
firstaidkit_roadrage.save!

puts "Done"
