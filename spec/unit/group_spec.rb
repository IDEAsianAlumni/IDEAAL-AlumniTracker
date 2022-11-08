require 'rails_helper'

RSpec.describe 'Make a Group', type: :model do 
    subject do
        Group.new(year: "2022")
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    # it 'is not valid without a year' do
    #     subject.year = nil
    #     expect(subject).not_to be_valid
    # end
end

describe GroupsController do
    describe "GET /groups", type: :controller do
        describe "groups" do
            it "renders group index template" do
                get 'index'
                expect(response.status).to be(200)
            end
        end
    end
end