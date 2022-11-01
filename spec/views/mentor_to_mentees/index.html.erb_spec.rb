require 'rails_helper'

RSpec.describe "mentor_to_mentees/index", type: :view do
  before(:each) do
    assign(:mentor_to_mentees, [
      MentorToMentee.create!(
        mentor_uid: "Mentor Uid",
        mentee_uid: "Mentee Uid",
        status: 2,
        year: 3
      ),
      MentorToMentee.create!(
        mentor_uid: "Mentor Uid",
        mentee_uid: "Mentee Uid",
        status: 2,
        year: 3
      )
    ])
  end

  it "renders a list of mentor_to_mentees" do
    render
    assert_select "tr>td", text: "Mentor Uid".to_s, count: 2
    assert_select "tr>td", text: "Mentee Uid".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
