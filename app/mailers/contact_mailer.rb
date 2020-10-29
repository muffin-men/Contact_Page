class ContactMailer < ApplicationMailer
  #送信処理を記載
  def contact_mail(contact)
    @contact = contact
    mail to: "your email", subject: "お問い合わせ"
  end
end
