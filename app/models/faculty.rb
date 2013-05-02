# == Schema Information
#
# Table name: faculties
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Faculty < ActiveRecord::Base
  attr_accessible :id, :name, :description

  has_many :user
end