require 'rails_helper'

RSpec.describe GamesController, type: :controller do
  let!(:a_game) {Game.create! valid_attributes}

  let(:valid_attributes) do
    {
      title: "Test Game",
      genre: "Testing",
      developer: "Testcases",
      publisher: "The Tests",
      release_date: DateTime.new(2016, 1, 1),
      slipcover: "Some img link",
      description: "Write rspec tests for the games controller"
    }
  end

  let(:invalid_attributes) do
    {
      title: ""
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
       it "creates a new game" do
           expect {
             post :create, {game: valid_attributes}
           }.to change(Game, :count).by(1)
       end
     end
   end
end
