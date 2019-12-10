class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params_contact)
    if @contact.save
      flash[:success] = "Success Add Records"
      redirect_to action: 'index'
    else
      flash[:error] = "Data not valid"
      render 'index'
    end
  end

  private
  def params_contact
    params.require(:contact).permit(:name, :message)
  end
end
