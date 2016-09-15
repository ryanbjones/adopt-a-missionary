require "rails_helper"

RSpec.describe ModeratorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/moderators").to route_to("moderators#index")
    end

    it "routes to #new" do
      expect(:get => "/moderators/new").to route_to("moderators#new")
    end

    it "routes to #show" do
      expect(:get => "/moderators/1").to route_to("moderators#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/moderators/1/edit").to route_to("moderators#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/moderators").to route_to("moderators#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/moderators/1").to route_to("moderators#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/moderators/1").to route_to("moderators#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/moderators/1").to route_to("moderators#destroy", :id => "1")
    end

  end
end
