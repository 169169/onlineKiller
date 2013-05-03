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

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
