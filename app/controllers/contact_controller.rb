require "pry"

class ContactController < ApplicationController

	def new
    	@contact = Contact.new
  	end

	def create
		contact = params['contact']
		name = contact['name']
		email = contact['email']
		phone = contact['phone']
		message = contact['message']

		@contact = Contact.new
		attributes = @contact.attribute_names
		params.require(:contact).permit!
		@contact.attributes = params['contact'].slice(*attributes)

        if @contact.save!
            ContactMailer::contact_us(@contact).deliver!
        	flash[:notice] = "Message sent successfully"
        	redirect_to root_path
        else
            flash[:error] = @contact.errors
            render :new
        end
	end
end
