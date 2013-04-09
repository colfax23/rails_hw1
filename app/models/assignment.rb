class Assignment
  include Mongoid::Document

  embedded_in :lecture
  has_many :uploads

  field :title,		:type => String
  field :due_date,		:type => String
  field :total_points,		:type => String
  field :text_content,		:type => String

end
