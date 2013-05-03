class Test < ActiveRecord::Base
  attr_accessible :mark, :paper_id, :status, :user_id

  belongs_to :paper
  belongs_to :user
end
