require "rails_helper"

RSpec.describe UserMailer, :type => :mailer do
  describe "sign_up" do
    let(:user) { User.create(email: "b@example.com", password: "gogo", password_confirmation: "gogo") }
    let(:mail) { UserMailer.sign_up(user.id) }

    it "renders the headers" do
      expect(mail.subject).to eq("Sign up")
      expect(mail.to).to eq(["b@example.com"])
      expect(mail.from).to eq(["bookis@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
