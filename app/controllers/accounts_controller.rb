class AccountsController < FirebaseController
  def create
    super do |decoded_token|
      User.create(
        name: "User_#{rand(1..10000)}",
        email: decoded_token["decoded_token"][:payload]["email"],
        uid: decoded_token["uid"],
      )
    end
  end

  def destroy
    current_user.destroy!
    flash[:danger] = "アカウント削除しました。"
    super
  end
end
