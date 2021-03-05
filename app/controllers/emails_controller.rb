class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end
  def create
    @email = Email.create(sender: Faker::Internet.email, text: Faker::Quote.matz)
  end

  def show
    @email.read = true
    @email.save
	end

#destroy the params given email
  def destroy
    @email = Email.destroy(params[:id])
    redirect_to root_path   
  end


#declare var that will be used in 4 functions
  private 
  def all_emails
      @emails = Email.all
    end

    def set_emails
      @email = Email.find(params[:id])
		end

end