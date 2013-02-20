class User < ActiveRecord::Base
  attr_accessible :crypted_password, :email, :password, :password_confirmation, :username
  acts_as_authentic

  belongs_to :lease
  has_many :submittedreports, :class_name => 'RepairRequest'
  has_many :approvedreports, :class_name => 'RepairRequest'
end
