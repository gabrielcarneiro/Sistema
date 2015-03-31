require "rails_helper"

RSpec.describe DiaristasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/diaristas").to route_to("diaristas#index")
    end

    it "routes to #new" do
      expect(:get => "/diaristas/new").to route_to("diaristas#new")
    end

    it "routes to #show" do
      expect(:get => "/diaristas/1").to route_to("diaristas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/diaristas/1/edit").to route_to("diaristas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/diaristas").to route_to("diaristas#create")
    end

    it "routes to #update" do
      expect(:put => "/diaristas/1").to route_to("diaristas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/diaristas/1").to route_to("diaristas#destroy", :id => "1")
    end

  end
end
