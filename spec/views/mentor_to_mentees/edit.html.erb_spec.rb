require 'rails_helper'

RSpec.describe "mentor_to_mentees/edit", type: :view do
  before(:each) do
    @mentor_to_mentee = assign(:mentor_to_mentee, MentorToMentee.create!(
      mentor_uid: "MyString",
      mentee_uid: "MyString",
      year: 1
    ))
  end

  it "renders the edit mentor_to_mentee form" do
    render

    assert_select "form[action=?][method=?]", mentor_to_mentee_path(@mentor_to_mentee), "post" do
      assert_select "input[name=?]", "mentor_to_mentee[status]"

      assert_select "input[name=?]", "mentor_to_mentee[year]"
    end
  end
end
