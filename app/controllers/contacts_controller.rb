class ContactsController < ApplicationController
  before_action :authenticate_user!
    
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.create(contact_params)
    if @contact.valid?
      flash[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to root_path
    else
      flash.now[:alert] = 'Cannot send message.'
      #alert will only show up if presented in the application.html.erb
      render :new
    end
  end
    
private

  def contact_params
    params.require(:contact).permit(:message, :email, :subject)
  end
  
end
