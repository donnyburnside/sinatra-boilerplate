class User < ActiveRecord::Base

  has_secure_password

  #validates_presence_of :email
  #validates_presence_of :password
  #validates_presence_of :role_id
  #validates_format_of :email,
  #  :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
  #  :on => :create

end
