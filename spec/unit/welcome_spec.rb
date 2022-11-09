require 'rails_helper'

#test views
#https://relishapp.com/rspec/rspec-rails/docs/matchers/render-template-matcher

describe WelcomeController do
    describe "GET /", type: :controller do
        it "renders lender page template" do
            get 'index'
            expect(response.status).to be(200)
        end
    end
end