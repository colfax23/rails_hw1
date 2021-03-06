class User
	include Mongoid::Document
	
	has_many :courses
	has_many :uploads

	field :first_name,	:type => String
	field :last_name,	:type => String
	field :birth_date,	:type => String
	field :hometown,	:type => String

  validates :email, presence: true
  #adding more white space for hw5
end
