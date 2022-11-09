require 'rails_helper'

RSpec.describe "groups/show", type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      year: "Year",
      group_name: "Group Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/Group Name/)
  end
end
