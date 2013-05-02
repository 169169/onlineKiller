class Subject < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :questions
end
