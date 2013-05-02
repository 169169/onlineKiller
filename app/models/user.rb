# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  remember_token  :string(255)
#  faculty_id      :integer
#

class User < ActiveRecord::Base 
  belongs_to :faculty
  attr_accessible :name, :email, :password, :password_confirmation, :faculty_id 
  has_secure_password 
 
  before_save { |user| user.email = email.downcase } 
  before_save :create_remember_token
 
  validates :name, presence: true, length: { maximum: 50 } 
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
  validates :email, presence: true, 
                    format: { with: VALID_EMAIL_REGEX }, 
                    uniqueness: { case_sensitive: false } 
  validates :password, presence: true, length: { minimum: 6 } 
  validates :password_confirmation, presence: true 


  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end 
