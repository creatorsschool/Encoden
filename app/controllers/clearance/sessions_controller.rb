class Clearance::SessionsController < Clearance::BaseController
  before_filter :redirect_signed_in_users, only: [:new]
  skip_before_filter :require_login, only: [:create, :new, :destroy]
  skip_before_filter :authorize, only: [:create, :new, :destroy]

  def create
    @user = authenticate(params)

    sign_in(@user) do |status|
      if status.success?
        flash[:notice] = "You have logged in successfully!"
        redirect_back_or url_after_create
      else
        flash.now.notice = status.failure_message
        render template: "sessions/new", status: :unauthorized
      end
    end
  end

  def destroy
    sign_out
    flash[:notice] = "You have logged out successfully!"
    redirect_to url_after_destroy
  end

  def new
    render template: "sessions/new"
  end

  private

  def redirect_signed_in_users
    if signed_in?
      redirect_to url_for_signed_in_users
    end
  end

  def url_after_create
    Clearance.configuration.redirect_url
  end

  def url_after_destroy
    root_path
  end

  def url_for_signed_in_users
    url_after_create
  end
end
