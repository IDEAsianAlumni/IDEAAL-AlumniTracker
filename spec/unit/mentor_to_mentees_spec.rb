require 'rails_helper'

RSpec.describe 'Make a mentor to mentee mapping', type: :model do 
    subject do
        MentorToMentee.new(mentor_uid: '123456789', mentee_uid: '987654321', status: 100, year: 2022)
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a mentor' do
        subject.mentor_uid = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a mentee' do
        subject.mentee_uid = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a year' do
        subject.year = nil
        expect(subject).not_to be_valid
    end
end

describe AdminController do
    describe "GET /admin", type: :controller do
        describe "mentor_to_mentees" do
            it "renders index template" do
                get 'index'
                expect(response.status).to be(200)
            end
        end
    end
end
