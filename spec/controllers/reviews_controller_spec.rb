require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  let!(:a_review) {Review.create! valid_attributes}

  let(:valid_attributes) do
    {
      name: "Mr. Tests",
      description: "Write rspec tests for the review controller",
      rating: 5
    }
  end

  let(:invalid_attributes) do
    {
      name: ""
    }
  end

  describe "Get #index" do
   it "returns a 200" do
     get :index
     expect(response).to be_success
    end
  end

  it "returns json" do
    get :index
    expect(response.header['Content-Type']).to include('application/json')
  end

   describe "#create" do
     context "with valid params" do
       it "creates a new review" do
           expect {
             post :create, {review: valid_attributes}
           }.to change(Review, :count).by(1)
       end
     end
   end
end
