require 'rails_helper'

RSpec.describe "group_to_users/edit", type: :view do
  before(:each) do
    @group_to_user = assign(:group_to_user, GroupToUser.create!(
      MentorID: "MyString",
      GroupID: "MyString"
    ))
  end

  it "renders the edit group_to_user form" do
    render

    assert_select "form[action=?][method=?]", group_to_user_path(@group_to_user), "post" do

      assert_select "input[name=?]", "group_to_user[MentorID]"

      assert_select "input[name=?]", "group_to_user[GroupID]"
    end
  end
end
