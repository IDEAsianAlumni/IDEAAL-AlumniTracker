require 'rails_helper'

RSpec.describe "group_to_users/index", type: :view do
  before(:each) do
    assign(:group_to_users, [
      GroupToUser.create!(
        uid: "Mentor",
        group_id: "Group"
      ),
      GroupToUser.create!(
        uid: "Mentor",
        group_id: "Group"
      )
    ])
  end

  it "renders a list of group_to_users" do
    render
    assert_select "tr>td", text: "Mentor".to_s, count: 2
    assert_select "tr>td", text: "Group".to_s, count: 2
  end
end
