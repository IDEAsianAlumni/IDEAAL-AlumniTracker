require 'rails_helper'

RSpec.describe "mentor_to_mentees/new", type: :view do
  before(:each) do
    assign(:mentor_to_mentee, MentorToMentee.new(
      mentor_uid: "MyString",
      mentee_uid: "MyString",
      year: 1
    ))
  end

  it "renders new mentor_to_mentee form" do
    render

    assert_select "form[action=?][method=?]", mentor_to_mentees_path, "post" do
      assert_select "input[name=?]", "mentor_to_mentee[status]"

      assert_select "input[name=?]", "mentor_to_mentee[year]"
    end
  end
end
