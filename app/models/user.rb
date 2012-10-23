class User < ActiveRecord::Base
  attr_accessible :password, :userid, :username
  has_many :trans, :dependent => :nullify
end
