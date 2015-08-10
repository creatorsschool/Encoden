class PaymentsController < ApplicationController
  require 'braintree'

  def new
    @course = Course.find(params[:course_id])
    @client_token = Braintree::ClientToken.generate
  end

  def create

  end

end
