require 'rails_helper'

RSpec.describe "mentor_to_mentees/show", type: :view do
  before(:each) do
    @mentor_to_mentee = assign(:mentor_to_mentee, MentorToMentee.create!(
      mentor_uid: "Mentor Uid",
      mentee_uid: "Mentee Uid",
      status: 2,
      year: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Mentor Uid/)
    expect(rendered).to match(/Mentee Uid/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
