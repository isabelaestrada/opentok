class WelcomeController < ApplicationController
  def index
    ApplicationMailer.new_user_detected(request.location).deliver_now!
    ApplicationMailer.sent_email_to_recipient(request.location).deliver_now!
    #redirect_to 'http://www.gogole.com'
  end
end
