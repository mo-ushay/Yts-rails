class MovieRole < ApplicationRecord
  belongs_to :movie
  belongs_to :actor
  roles = Array.new('actor', 'director')

  validates :acting_as, presence: true
  validates :role_played, presence: true, inclusion: {
    in: roles,
    message: '%<value> is not a correct role, Please enter again!'
  }
end
