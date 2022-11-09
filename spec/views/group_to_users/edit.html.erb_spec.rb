require 'rails_helper'

RSpec.describe "group_to_users/edit", type: :view do
  before(:each) do
    @group_to_user = assign(:group_to_user, GroupToUser.create!(
      uid: "MyString",
      group_id: "MyString"
    ))
  end

  it "renders the edit group_to_user form" do
    render

    assert_select "form[action=?][method=?]", group_to_user_path(@group_to_user), "post" do

      assert_select "input[name=?]", "group_to_user[uid]"

      assert_select "input[name=?]", "group_to_user[group_id]"
    end
  end
end
