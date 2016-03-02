require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  review = FactoryGirl.create(:review)
  game = FactoryGirl.create(:game)

  describe "Get #index" do
   it "returns a 200" do
     get :index, :game_id => game.id
     expect(response).to be_success
    end
  end

  it "returns json" do
    get :index, :game_id => game.id
    expect(response.header['Content-Type']).to include('application/json')
  end

   describe "#create" do
     context "with valid params" do
       it "creates a new review" do
           expect {
             post :create, review: FactoryGirl.attributes_for(:review), :game_id => game.id
           }.to change(Review, :count).by(1)
       end
     end
   end
end
