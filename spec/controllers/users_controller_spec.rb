require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe "GET 'new'" do
    it "is successful" do
      get :new
      expect(response.status).to eq 200
    end
  end

  describe "POST 'create'" do
    let(:request) { post :create, user: {email: "b@example.com"} }

    it "adds a user to the database" do
      count = User.all.count
      request
      expect(User.all.count).to eq count + 1
    end

    it 'redirects to home page' do
      request
      expect(response).to redirect_to root_path
    end

    it 'assign the users id to session' do
      request
      expect(session[:user_id]).to eq assigns(:user).id
    end





  end
end
