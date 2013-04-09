class Course
  include Mongoid::Document

  embeds_many :lectures
  belongs_to :user

  field :name, 		:type => String
  field :number, 	:type => String
  field :description,	:type => String

end
