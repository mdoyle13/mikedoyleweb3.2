class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      ContactMailer.send_contact(@contact).deliver
      render :action => 'create'
    else
      render :action => 'new'
    end
  end
  
  def new
    @contact = Contact.new
  end
  
end
