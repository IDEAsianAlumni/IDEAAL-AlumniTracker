require "rails_helper"

RSpec.describe MentorToMenteesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/mentor_to_mentees").to route_to("mentor_to_mentees#index")
    end

    it "routes to #new" do
      expect(get: "/mentor_to_mentees/new").to route_to("mentor_to_mentees#new")
    end

    it "routes to #show" do
      expect(get: "/mentor_to_mentees/1").to route_to("mentor_to_mentees#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/mentor_to_mentees/1/edit").to route_to("mentor_to_mentees#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/mentor_to_mentees").to route_to("mentor_to_mentees#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/mentor_to_mentees/1").to route_to("mentor_to_mentees#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/mentor_to_mentees/1").to route_to("mentor_to_mentees#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/mentor_to_mentees/1").to route_to("mentor_to_mentees#destroy", id: "1")
    end
  end
end

