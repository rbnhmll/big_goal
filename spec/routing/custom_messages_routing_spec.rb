require "rails_helper"

RSpec.describe CustomMessagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/custom_messages").to route_to("custom_messages#index")
    end

    it "routes to #new" do
      expect(:get => "/custom_messages/new").to route_to("custom_messages#new")
    end

    it "routes to #show" do
      expect(:get => "/custom_messages/1").to route_to("custom_messages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/custom_messages/1/edit").to route_to("custom_messages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/custom_messages").to route_to("custom_messages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/custom_messages/1").to route_to("custom_messages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/custom_messages/1").to route_to("custom_messages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/custom_messages/1").to route_to("custom_messages#destroy", :id => "1")
    end

  end
end
