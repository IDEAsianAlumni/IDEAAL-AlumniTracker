require "rails_helper"

#https://dev.to/ionabrabender/testing-crud-with-rspec-and-rails-186k
RSpec.describe MentorToMenteesController, type: :controller do
    describe 'create' do 
        it 'successfully creates a new mapping' do
            expect{
                post :create, params: { :mentor_to_mentee => 
                { :mentor_uid => "12345", :mentee_uid => "54321", :status => 100, :year => 2022 } }
            }.to change(MentorToMentee,:count).by(1)
        end

        #missing mentee_uid
        it 'unsuccessfully tries to make new mapping' do 
            expect{
                post :create, params: { :mentor_to_mentee => 
                { :mentor_uid => "12345", :status => 100, :year => 2022 } }
            }.to_not change(MentorToMentee,:count)
        end
    end

    describe "PATCH #update" do
        context "with good data" do
            it "updates the wallet and redirects" do
                @mapping = MentorToMentee.new(mentor_uid: '123456789', mentee_uid: '987654321', status: 100, year: 2022)
                @mapping.update({ :mentor_uid => "12345", :mentee_uid => "54321", :status => 100, :year => 2022 })
                @mapping.destroy
                #expect(response).to be_redirect
            end
        end
    end

    describe "GET index" do
        it "renders the index template" do
          get :index
          expect(response).to render_template("index")
        end
      end

    describe "GET new" do
        it "renders the new template" do
            get :new
            expect(response).to render_template("new")
        end
    end
end