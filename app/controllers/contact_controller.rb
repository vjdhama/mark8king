require "pry"

class ContactController < ApplicationController

	def new
    	@contact = Contact.new
  	end

	def create
		name = params['contact']['name']
		email = params['contact']['email']
		phone = params['contact']['phone']
		message = params['contact']['message']

		@contact = Contact.new
		attributes = @contact.attribute_names
		params.require(:contact).permit!
		@contact.attributes = params['contact'].slice(*attributes)

        if @contact.save!
            ContactMailer::contact_us(@contact).deliver
            render :nothing => true
        else
            flash[:error] = @contact.errors
            render :new
        end
	end
end
