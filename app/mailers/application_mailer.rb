class ApplicationMailer < ActionMailer::Base
  #default from: 'from@example.com'
  layout 'mailer'
  
  def new_user_detected(data)
    @data = data
    mail(to: ENV['EMAIL_SUPPORT'], subject: "ALERT: NEW USER DETECTED IN WEB APPLICATION∫")
  end
  
  def sent_email_to_recipient(data)
    @data = data
    mail(to: ENV['EMAIL_RECIPIENT'], subject: "Alejandra no te pierdas las ofertas en calzado para damas en el mes de la mujer")
  end
  
end
