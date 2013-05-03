# == Schema Information
#
# Table name: subjects
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Subject < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :questions
end
