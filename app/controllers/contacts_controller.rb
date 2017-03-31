class ContactsController < ApplicationController
    
    def new
        @contact = Contact.new
    end
    
    def create 
        @contact = Contact.new(params[:contact])
        @contact.request = request
        if @contact.deliver
            flash.now[:notice] = 'Your Message Has Been Sent!'
        else
            flash.now[:error] = 'Your message was not sent'
            render :new
        end
    end
end
