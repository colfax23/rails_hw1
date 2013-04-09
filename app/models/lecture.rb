class Lecture
  include Mongoid::Document

  embedded_in :course
  embeds_many :assignments

  field :lecture_name, 		:type => String
  field :lecture_number, 	:type => String
  field :lecture_summary, 	:type => String

end
