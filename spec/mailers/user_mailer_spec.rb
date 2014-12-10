require "rails_helper"

RSpec.describe UserMailer, :type => :mailer do
  describe 'sign up' do

    it 'the to field has a users email address' do
      user = User.create(email: "b@example.com")
      mailer = UserMailer.sign_up(user.id)
      expect(mailer.to).to include "b@example.com"
    end
  end
end
