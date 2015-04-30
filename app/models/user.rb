class User < ActiveRecord::Base
  include Clearance::User

  validates_presence_of :username
  validates_uniqueness_of :username

  has_many :shares
end
