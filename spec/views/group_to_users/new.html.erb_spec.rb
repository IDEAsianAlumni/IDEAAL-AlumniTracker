require 'rails_helper'

RSpec.describe "group_to_users/new", type: :view do
  before(:each) do
    assign(:group_to_user, GroupToUser.new(
      MentorID: "MyString",
      GroupID: "MyString"
    ))
  end

  it "renders new group_to_user form" do
    render

    assert_select "form[action=?][method=?]", group_to_users_path, "post" do

      assert_select "input[name=?]", "group_to_user[MentorID]"

      assert_select "input[name=?]", "group_to_user[GroupID]"
    end
  end
end
