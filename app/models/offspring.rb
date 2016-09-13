class Offspring < ApplicationRecord
<<<<<<< abb810f7e75dfcf395609e88570c66193edbf9f0
  belongs_to :user
  validates :first_name, presence: true, length: { within: 2..60 }
  validates :last_name, presence: true, length: { within: 2..60 }
  validates :user, presence: true
=======
>>>>>>> Create offspring model
end
