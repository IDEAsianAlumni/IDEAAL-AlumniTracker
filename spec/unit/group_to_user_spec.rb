require 'rails_helper'

RSpec.describe 'Make a GroupToUser', type: :model do 
    subject do
        GroupToUser.new(MentorID: '1', GroupID: '1')
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a MentorID' do
        subject.MentorID = nil
        expect(subject).not_to be_valid
    end
    it 'is not valid without a GroupID' do
        subject.GroupID = nil
        expect(subject).not_to be_valid
    end
end

describe GroupToUsersController do
    describe "GET /group_to_users", type: :controller do
        describe "group_to_users" do
            it "renders group index template" do
                get 'index'
                expect(response.status).to be(200)
            end
        end
    end
end