require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe "GET 'new'" do
    it "is successful" do
      get :new
      expect(response.status).to eq 200
    end
  end

  describe "POST 'create'" do
    # Create a user
    # redirect to the home page
    # signs the user in
    # if doesn't save, render the new form again
    it "adds a user to the database" do
      # post(:create, {user: {email: "b@example.com"}})
      count = User.all.count
      post :create, user: {email: "b@example.com"}
      expect(User.all.count).to eq count + 1
    end

    it 'redirects to home page' do
      post :create, user: {email: "b@example.com"}
      expect(response).to redirect_to root_path
    end
  end
end
