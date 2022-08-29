# Preview all emails at http://localhost:3000/rails/mailers/user_mailler_mailer
class UserMaillerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailler_mailer/account_activation
  def account_activation
    UserMaillerMailer.account_activation
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailler_mailer/password_reset
  def password_reset
    UserMaillerMailer.password_reset
  end

end
