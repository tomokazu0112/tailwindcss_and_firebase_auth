class SessionsController < FirebaseController
  def create
    super do |decoded_token|
      User.find_by(uid: decoded_token["uid"])
    end
  end

  def destroy
    flash[:success] = "ログアウトしました。"
    super
  end
end
