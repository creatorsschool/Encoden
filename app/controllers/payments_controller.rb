class PaymentsController < ApplicationController
  def new
    @course = Course.find(params[:course_id])
    @client_token = Braintree::ClientToken.generate
  end

  def create
    course = Course.find(params[:course_id])
    result = Braintree::Transaction.sale(
      :amount => course.price,
      :payment_method_nonce => params[:payment_method_nonce],
      :options => {
        :submit_for_settlement => true
      }
    )
    p result
    redirect_to courses_path
  end

end
