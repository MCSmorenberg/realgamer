RSpec.describe GamesController, type: :routing do
  book = FactoryGirl.create(:game)
  review = FactoryGirl.create(:review)

  describe "routing" do
    it "routes to #show" do
     expect(:get => "/games/1").to route_to("games#show", id: "1")
    end

    it "routes to #create" do
     expect(:post => "/games").to route_to("games#create")
    end
  end
end
