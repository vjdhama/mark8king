class ContactMailer < ActionMailer::Base
  	def contact_us(contact)
        @contact = contact
        mail(from: @contact.email, subject: 'Contact Request', message: @contact.message)
    end
end
