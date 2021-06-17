module SessionsHelper
  def log_in(user)
    session[:uid] = user.uid
  end

  def log_out
    session.delete(:uid)
    @current_user = nil
  end

  def logged_in?
    !current_user.nil?
  end

  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end

  def current_user
    if (uid = session[:uid])
      @current_user ||= User.find_by(uid: uid)
    end
  end

  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  private

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "ログインして下さい。"
        redirect_to root_path
      end
    end
end
