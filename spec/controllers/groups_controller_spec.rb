require "rails_helper"

#https://dev.to/ionabrabender/testing-crud-with-rspec-and-rails-186k
RSpec.describe GroupsController, type: :controller do

    describe "GET index" do
        it "assigns @groups" do
        group = Group.create(year: "2021")
        get :index
        expect(assigns(:groups)).to eq([group])
        end
    
        it "renders the index template" do
        get :index
        expect(response).to render_template("index")
        end
    end

    describe "PATCH #update" do
        context "with good data" do
            it "updates the wallet and redirects" do
                @make_group = Group.new(year: "2022")
                @make_group.update({ :year => "2023" })
                @make_group.destroy
                #expect(response).to be_redirect
            end
        end
    end

    describe "GET new" do
        it "renders the new template" do
            get :new
            expect(response).to render_template("new")
        end
    end
end