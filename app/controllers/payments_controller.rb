class PaymentsController < ApplicationController
def new
    @course = Course.find(params[:course_id])
    if @course.paid == true
      redirect_to courses_path, notice: "You have already bought this course!"
    else
    @client_token = Braintree::ClientToken.generate
    end
end

  def create
    @course = Course.find(params[:course_id])
    result = Braintree::Transaction.sale(
      :amount => @course.price,
      :payment_method_nonce => params[:payment_method_nonce],
      :options => {
        :submit_for_settlement => true
      }
    )

    if result.success?
      @course.update(paid: true)
      redirect_to courses_path, notice: "Congratulations! Your transaction has been completed successfully!"
    else
      flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
      @client_token = Braintree::ClientToken.generate
      render :new
    end
  end
end