# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
  {username: 'testuser111', password: 'testingpassword'},
  {username: 'testuser222', password: 'llll'},
]

users_id = []

users.each do |user|
  user_gen = User.create!(user)
  users_id = users_id.append(user_gen.id)
end

lawyers = [
  { fname: 'Jason', lname: 'Lonet', bday: '21-Apr-1989', location: 'Simi Valley', education: 'Columbia University', winRate: 89.10 , aboutMe: "Jason Lonet has over 20 years of experience negotiating technology transactions and outsourcing agreements. He has represented both technology consumers and vendors – including significant outsourcing arrangements for major healthcare providers, utilities, a Big Four accounting firm, and one of the world’s largest financial institutions. He has also represented a variety of service providers, including a top-ten consulting firm, market leaders in network security software and credit card processing, broadcast networks, numerous software developers, as well firms providing customer care, patient records and video processing services.", username: 'laywer1', password: 'pass'},
  { fname: 'Mark', lname: 'Smith', bday: '21-Aug-1999', location: 'Jacksonville', education: 'Harvard University', winRate: 75.55, aboutMe: "Mark Smith has over ten years of experience in the field. His tactical and business-focused approach resolves highly contentious executive compensation, non-compete, and discrimination claims for a fraction of the cost. He also frequently conducts internal investigations of misconduct and discrimination claims and regulatory violations, working with clients to get them their due.", username: 'laywer2', password: 'word'},
  { fname: 'Justin', lname: 'Fields', bday: '11-Sep-2005', location: 'Redville', education: 'Cornell University', winRate: 95.11, aboutMe: "Justin Fields is an attorney who cares — about his clients and his community. His professional and personal philosophy includes giving back in ways that make a meaningful difference to the local and global communities to which he dedicates her practice. Justin is a firm believer in Gandhi’s idea of being the change you want to see in the world.", username: 'lawyer3', password: 'password'},
]

ids = []

lawyers.each do |lawyer|
  lawyer = Lawyer.create!(lawyer)
  ids = ids.append(lawyer.id)
end

claims = [
   { fname: 'Christopher', lname: 'Asfour', bday: '21-Jul-1989', claimTypes: 'Breach of contract disputes', description: 'Testing testing', lawyers_id: ids[0], users_id: users_id[0]},
   { fname: 'Luke', lname: 'Cage', bday: '21-Jul-1990', claimTypes: 'Pick', description: 'Testing 123', lawyers_id: ids[1], users_id: users_id[1] },
   { fname: 'Richard', lname: 'Mike', bday: '21-Aug-1989', claimTypes: 'Pick', description: 'Testing 1111', lawyers_id: ids[2],  users_id: users_id[0]},
]

claims.each do |claim|
   Claim.create!(claim)
end