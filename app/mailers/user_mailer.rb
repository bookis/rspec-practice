class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def sign_up(user_id)
    @user = User.find(user_id)
    mail(
      to: [@user.email, "admin@users.com"],
      cc: "bookis.smuin@gmail.com",
      bcc: "bookis.smuin+bcc@gmail.com", 
      subject: "Welcome!"
    )
  end

end
