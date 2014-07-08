class UserMailer < ActionMailer::Base
  default from: "reservahimalaya@gmail.com",
           cc: "reservahimalaya@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reserva_confirmation.subject
  #
  def reserva_confirmation(himalaya)
    @himalaya = himalaya
    mail to: himalaya.email,subject:"conformation  reserva  de himalaya"
  end
end
