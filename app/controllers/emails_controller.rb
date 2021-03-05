class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end
  def create
    @email = Email.create(email_params)

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end
end
