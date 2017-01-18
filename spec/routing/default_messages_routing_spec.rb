require "rails_helper"

RSpec.describe DefaultMessagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/default_messages").to route_to("default_messages#index")
    end

    it "routes to #new" do
      expect(:get => "/default_messages/new").to route_to("default_messages#new")
    end

    it "routes to #show" do
      expect(:get => "/default_messages/1").to route_to("default_messages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/default_messages/1/edit").to route_to("default_messages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/default_messages").to route_to("default_messages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/default_messages/1").to route_to("default_messages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/default_messages/1").to route_to("default_messages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/default_messages/1").to route_to("default_messages#destroy", :id => "1")
    end

  end
end
