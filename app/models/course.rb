class Course
  include Mongoid::Document

  embeds_many :lectures
  belongs_to :user
  
  field :callNumber,	:type => String
  field :courseTitle,	:type => String
  field :startTime1,	:type => String
  field :endTime1,	:type => String
  field :meetsOn1,	:type => String
  field :building1,	:type => String
  field :room1,	:type => String
  field :instructor1Name,	:type => String

  validates :course_title, presence: true

end
