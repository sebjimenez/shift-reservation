class Offspring < ApplicationRecord
<<<<<<< 8467069395f6c37a99aa5123608f077dcffce17c
<<<<<<< abb810f7e75dfcf395609e88570c66193edbf9f0
  belongs_to :user
  validates :first_name, presence: true, length: { within: 2..60 }
  validates :last_name, presence: true, length: { within: 2..60 }
  validates :user, presence: true
=======
>>>>>>> Create offspring model
=======
  validates :first_name, presence: true, length: { within: 2..60 }
  validates :last_name, presence: true, length: { within: 2..60 }
>>>>>>> Manually Rebased code with master
end
