RSpec.describe GamesController, type: :routing do
  book = FactoryGirl.create(:game)
  review = FactoryGirl.create(:review)

  describe "routing" do
    it "routes to #index" do
     expect(:get => "/games/1/reviews").to route_to("reviews#index", game_id: "1")
    end

    it "routes to #create" do
     expect(:post => "/games/1/reviews").to route_to("reviews#create", game_id: "1")
    end
  end
end
