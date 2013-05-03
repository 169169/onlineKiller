# == Schema Information
#
# Table name: questions
#
#  id           :integer          not null, primary key
#  subject_id   :integer
#  title        :string(255)
#  firstOption  :string(255)
#  secondOption :string(255)
#  thirdOption  :string(255)
#  fourthOption :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  answer       :string(255)
#

class Question < ActiveRecord::Base
  attr_accessible :firstOption, :fourthOption, :secondOption, :subject_id, :thirdOption, :title, :answer
  belongs_to :subject
  has_many :contents
  has_many :papers, :through => :contents

  validates :title, presence: true, length: { maximum: 100 } 
  validates :firstOption, presence: true 
  validates :secondOption, presence: true
  validates :thirdOption, presence: true 
  validates :fourthOption, presence: true 
  validates :subject_id, presence: true 
  validates :answer, presence: true
end
