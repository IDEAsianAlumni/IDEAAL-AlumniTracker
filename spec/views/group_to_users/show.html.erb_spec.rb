require 'rails_helper'

RSpec.describe "group_to_users/show", type: :view do
  before(:each) do
    @group_to_user = assign(:group_to_user, GroupToUser.create!(
      uid: "Mentor",
      group_id: "Group"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Mentor/)
    expect(rendered).to match(/Group/)
  end
end
