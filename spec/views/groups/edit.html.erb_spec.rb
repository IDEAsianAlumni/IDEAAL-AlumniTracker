require 'rails_helper'

RSpec.describe "groups/edit", type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      year: "MyString",
      group_name: "MyString"
    ))
  end

  it "renders the edit group form" do
    render

    assert_select "form[action=?][method=?]", group_path(@group), "post" do

      assert_select "input[name=?]", "group[year]"

      assert_select "input[name=?]", "group[group_name]"

    end
  end
end
