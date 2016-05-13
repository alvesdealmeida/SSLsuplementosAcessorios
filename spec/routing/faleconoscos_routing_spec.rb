require "spec_helper"

describe FaleconoscosController do
  describe "routing" do

    it "routes to #index" do
      get("/faleconoscos").should route_to("faleconoscos#index")
    end

    it "routes to #new" do
      get("/faleconoscos/new").should route_to("faleconoscos#new")
    end

    it "routes to #show" do
      get("/faleconoscos/1").should route_to("faleconoscos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/faleconoscos/1/edit").should route_to("faleconoscos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/faleconoscos").should route_to("faleconoscos#create")
    end

    it "routes to #update" do
      put("/faleconoscos/1").should route_to("faleconoscos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/faleconoscos/1").should route_to("faleconoscos#destroy", :id => "1")
    end

  end
end
