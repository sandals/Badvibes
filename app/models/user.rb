class User < ActiveRecord::Base
  include Clearance::User

  validates :username, presence: true
  validates :username, uniqueness: true

  has_many :shares
end
