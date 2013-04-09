class Upload
  include Mongoid::Document

  belongs_to :user
  belongs_to :assignment

  field :date,		:type => String
  field :ip_address,		:type => String
  field :description,		:type => String

end
