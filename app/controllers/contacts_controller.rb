class ContactsController < ApplicationController
  #問い合せフォーム作成
  def new
    @contact = Contact.new
  end

  #問い合せフォームの内容受け取り
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
  #メール送信
      ContactMailer.contact_mail(@contact).deliver
      redirect_to thanks_contacts_path
    else
      render :new
    end
  end

  #送信完了ページ
  def thanks
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
