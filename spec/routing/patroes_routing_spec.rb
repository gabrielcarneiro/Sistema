require "rails_helper"

RSpec.describe PatroesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/patroes").to route_to("patroes#index")
    end

    it "routes to #new" do
      expect(:get => "/patroes/new").to route_to("patroes#new")
    end

    it "routes to #show" do
      expect(:get => "/patroes/1").to route_to("patroes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/patroes/1/edit").to route_to("patroes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/patroes").to route_to("patroes#create")
    end

    it "routes to #update" do
      expect(:put => "/patroes/1").to route_to("patroes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/patroes/1").to route_to("patroes#destroy", :id => "1")
    end

  end
end
