class Contact < ActiveRecord::Base
	self.table_name = "CONTACT"
	
	field :name, type: String
  	field :email, type: String
  	field :phone, type: String
  	field :message, type: String

  	validates_presence_of :name, :email, :phone, :message
  	validates_format_of :email , with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Email is not valid format"
end
