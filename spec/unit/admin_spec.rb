require 'rails_helper'

#test views
#https://relishapp.com/rspec/rspec-rails/docs/matchers/render-template-matcher

describe AdminController do
    describe "GET /admin", type: :controller do
        describe "admin/index" do
            it "renders index template" do
                get 'index'
                expect(response.status).to be(200)
            end
        end
    end
end
