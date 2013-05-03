class Content < ActiveRecord::Base
  attr_accessible :paper_id, :question_id

  belongs_to :question
  belongs_to :paper
end
