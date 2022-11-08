require "rails_helper"

RSpec.describe GroupToUsersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/group_to_users").to route_to("group_to_users#index")
    end

    it "routes to #new" do
      expect(get: "/group_to_users/new").to route_to("group_to_users#new")
    end

    it "routes to #show" do
      expect(get: "/group_to_users/1").to route_to("group_to_users#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/group_to_users/1/edit").to route_to("group_to_users#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/group_to_users").to route_to("group_to_users#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/group_to_users/1").to route_to("group_to_users#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/group_to_users/1").to route_to("group_to_users#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/group_to_users/1").to route_to("group_to_users#destroy", id: "1")
    end
  end
end
