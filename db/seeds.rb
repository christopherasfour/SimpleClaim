# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

claims = [
  { fname: 'Christopher', lname: 'Asfour', bday: '21-Jul-1989', claimType: 'Breach of contract disputes', description: 'Testing testing' },
  { fname: 'Luke', lname: 'Cage', bday: '21-Jul-1990', claimType: 'Pick', description: 'Testing 123' },
  { fname: 'Richard', lname: 'Mike', bday: '21-Aug-1989', claimType: 'Pick', description: 'Testing 1111' },

]

claims.each do |claim|
  Claim.create!(claim)
end
