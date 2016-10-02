FactoryGirl.define do
  factory :offspring do
<<<<<<< 8467069395f6c37a99aa5123608f077dcffce17c
<<<<<<< abb810f7e75dfcf395609e88570c66193edbf9f0
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    user
=======
    first_name "MyString"
    last_name "MyString"
    age 1
>>>>>>> Create offspring model
=======
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
>>>>>>> Manually Rebased code with master
  end
end
