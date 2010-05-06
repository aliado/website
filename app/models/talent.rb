class Talent
  include Mongoid::Document
  field :name, :type => String
  field :title, :type => String
  field :age, :type => String
end
