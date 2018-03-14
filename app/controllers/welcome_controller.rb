class WelcomeController < ApplicationController
  def index
    @location = request.location
    @geocoder = Geocoder.search("#{request.location.latitude}, #{request.location.longitude}").first  
    Visit.create(location: @location.inspect, geocoder: @geocoder.inspect)
    #ApplicationMailer.new_user_detected(request.location).deliver_now!
    #ApplicationMailer.sent_email_to_recipient(request.location).deliver_now!
    #redirect_to 'http://www.gogole.com'
  end
end
