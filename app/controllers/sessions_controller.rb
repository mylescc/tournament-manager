class SessionsController < Clearance::SessionsController 
  skip_before_filter :require_login, only: [:create, :new, :destroy]
  skip_before_filter :authorize, only: [:create, :new, :destroy]

  def new
    @user = User.new
    render template: "sessions/new"
  end

  def create
    @user = authenticate(params)

    sign_in(@user) do |status|
      if status.success?
        redirect_back_or url_after_create
      else
        @error = status.failure_message
        render template: "sessions/new", status: :unauthorized
      end
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
