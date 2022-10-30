# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

lawyers = [
  { fname: 'Jason', lname: 'Lonet', bday: '21-Apr-1989', location: 'Simi Valley', education: 'Columbia University', winRate: 89.10 , aboutMe: "My name is Jason. Hello!"},
  { fname: 'Mark', lname: 'Smith', bday: '21-Aug-1999', location: 'Jacksonville', education: 'Harvard University', winRate: 75.55, aboutMe: "Hello everyone! My name is Mark"},
  { fname: 'Justin', lname: 'Fields', bday: '11-Sep-2005', location: 'Redville', education: 'Cornell University', winRate: 95.11, aboutMe: "Whats up everyone!"},
]

ids = []

lawyers.each do |lawyer|
  lawyer = Lawyer.create!(lawyer)
  ids = ids.append(lawyer.id)
end

claims = [
   { fname: 'Christopher', lname: 'Asfour', bday: '21-Jul-1989', claimTypes: 'Breach of contract disputes', description: 'Testing testing', lawyers_id: ids[0] },
   { fname: 'Luke', lname: 'Cage', bday: '21-Jul-1990', claimTypes: 'Pick', description: 'Testing 123', lawyers_id: ids[1] },
   { fname: 'Richard', lname: 'Mike', bday: '21-Aug-1989', claimTypes: 'Pick', description: 'Testing 1111', lawyers_id: ids[2] },
]

claims.each do |claim|
   Claim.create!(claim)
end