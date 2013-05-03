class Paper < ActiveRecord::Base
  attr_accessible :content_id, :faculty_id, :subject_id

  has_many :contents
  has_many :questions, :through => :contents
  has_many :tests
  belongs_to :faculty
  belongs_to :subject
end
