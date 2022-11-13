# post :create, {claim: {fname: "Joey", lname: "Asfour", bday:"09-04-2001", claimTypes: "Pick", description: "Hello there everyone!", lawyers_id: 10  }}
FactoryBot.define do
  factory :claim do
    fname {'Joey'}
    lname {'Asfour'}
    bday {'09-04-2001'}
    claimTypes {'Loss Pick'}
    description {"Hello there everyone!"}
    lawyers_id {10}
    users_id {10}
  end
end
