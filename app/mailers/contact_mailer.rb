class ContactMailer < ActionMailer::Base
  default from: "site@mikedoyleweb.com"
  
  def send_contact(contact)
    @contact = contact
    mail(:to => "mdoyle13@gmail.com", :subject => "#{@contact.subject}")
  end
  
end
