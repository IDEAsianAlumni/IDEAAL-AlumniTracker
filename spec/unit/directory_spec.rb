require 'rails_helper'

#test views
#https://relishapp.com/rspec/rspec-rails/docs/matchers/render-template-matcher

describe DirectoryController do
    describe "GET /directory", type: :controller do
        describe "directory/index" do
            it "renders index template" do
                get 'index'
                expect(response.status).to be(200)
            end
        end
    end
end