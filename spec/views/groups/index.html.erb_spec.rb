require 'rails_helper'

RSpec.describe "groups/index", type: :view do
  before(:each) do
    assign(:groups, [
      Group.create!(
        year: "Year"
      ),
      Group.create!(
        year: "Year"
      )
    ])
  end

  it "renders a list of groups" do
    render
    assert_select "tr>td", text: "Year".to_s, count: 2
  end
end
